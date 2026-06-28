<script setup lang="ts">
import type { QuizDto, QuizResultDto, QuestionResultDto } from '~/types/api'
import { inlineMath } from '~/utils/inlineMath'

const props = defineProps<{ quizId: number; matiereSlug?: string; chapitre?: string }>()

const { get, post } = useApi()
const { enregistrerQuiz } = useProgression()
const { track } = useActivite()
const { set: setContexteEtude } = useContexteEtude()

const selections = reactive<Record<number, Set<number>>>({})
const result = ref<QuizResultDto | null>(null)
const submitting = ref(false)

// Chargement client (pas de top-level await : le composant peut être monté
// dynamiquement dans l'explorateur sans souci de Suspense). Recharge à chaque
// changement de quiz et réinitialise l'état.
const quiz = ref<QuizDto | null>(null)
const loadError = ref(false)
async function charger() {
  quiz.value = null
  loadError.value = false
  result.value = null
  for (const k of Object.keys(selections)) delete selections[Number(k)]
  try {
    quiz.value = await get<QuizDto>(`/quiz/${props.quizId}`)
  } catch {
    loadError.value = true
  }
}
watch(() => props.quizId, charger, { immediate: true })

function toggle(questionId: number, choixId: number) {
  if (result.value) return
  const set = selections[questionId] ?? (selections[questionId] = new Set())
  if (set.has(choixId)) set.delete(choixId)
  else set.add(choixId)
  // La question cochée devient la « question courante » pour AXIOM.
  currentQuestionId.value = questionId
  publierContexte()
}

const isSelected = (questionId: number, choixId: number) =>
  selections[questionId]?.has(choixId) ?? false

// Mélange déterministe des choix (graine = id de la question) : la bonne réponse
// n'est pas en position fixe, ordre identique serveur/client (pas de décalage
// d'hydratation). La correction se fait par id de choix.
function choixMelanges<T extends { id: number }>(question: { id: number; choix: T[] }): T[] {
  const a = [...question.choix]
  let s = question.id % 233280
  const rng = () => ((s = (s * 9301 + 49297) % 233280) / 233280)
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(rng() * (i + 1))
    ;[a[i], a[j]] = [a[j], a[i]]
  }
  return a
}

const nbRepondues = computed(() =>
  quiz.value ? quiz.value.questions.filter((q) => (selections[q.id]?.size ?? 0) > 0).length : 0
)

function detailPour(questionId: number): QuestionResultDto | undefined {
  return result.value?.details.find((d) => d.questionId === questionId)
}

function choixClass(questionId: number, choixId: number) {
  const d = detailPour(questionId)
  if (!d) {
    return isSelected(questionId, choixId)
      ? 'border-brand bg-brand-light ring-1 ring-brand'
      : 'border-rule hover:border-brand/50 hover:bg-paper'
  }
  const estBon = d.bonsChoix.includes(choixId)
  const estCoche = d.choixSelectionnes.includes(choixId)
  if (estBon) return 'border-theo bg-green-50'
  if (estCoche && !estBon) return 'border-red-400 bg-red-50'
  return 'border-rule opacity-70'
}

async function soumettre() {
  if (!quiz.value) return
  submitting.value = true
  try {
    const reponses: Record<number, number[]> = {}
    for (const q of quiz.value.questions) reponses[q.id] = Array.from(selections[q.id] ?? [])
    const res = await post<QuizResultDto>(`/quiz/${props.quizId}/correction`, { reponses })
    result.value = res
    enregistrerQuiz(res, { titre: quiz.value.titre, matiereSlug: props.matiereSlug ?? '' })
    track({ type: 'quiz', matiere: props.matiereSlug, chapitre: props.chapitre, item: 'quiz', label: quiz.value.titre, note: res.noteSur20 })
    publierContexte() // inclut désormais l'état corrigé dans le contexte AXIOM
  } finally {
    submitting.value = false
  }
}

function recommencer() {
  for (const k of Object.keys(selections)) delete selections[Number(k)]
  result.value = null
}

const noteColor = computed(() => {
  const n = result.value?.noteSur20 ?? 0
  if (n >= 14) return 'text-green-600'
  if (n >= 10) return 'text-amber-600'
  return 'text-red-600'
})

// --- Contexte « question courante » pour AXIOM ---
// AXIOM suit la question que l'élève regarde (défilement) ou vient de cocher,
// avec l'énoncé, les propositions et la réponse actuelle de l'élève.
const currentQuestionId = ref<number | null>(null)
const cardEls = new Map<number, Element>()
let observer: IntersectionObserver | null = null

function setCard(el: Element | null, qid: number) {
  if (el) cardEls.set(qid, el)
  else cardEls.delete(qid)
}

function blocQuestion(q: { id: number; enonce: string; choix: { id: number; texte: string }[] }, idx: number) {
  const propositions = q.choix.map((c) => `   - ${c.texte}`).join('\n')
  const sel = selections[q.id]
  const selTxt = sel && sel.size
    ? q.choix.filter((c) => sel.has(c.id)).map((c) => c.texte).join(' ; ')
    : '(non répondu)'
  let t = `Question ${idx} : ${q.enonce}\n  Propositions :\n${propositions}\n  Réponse de l'élève : ${selTxt}`
  const d = detailPour(q.id)
  if (d) t += `\n  Résultat : ${d.correcte ? 'correct' : 'incorrect'}`
  return t
}

// On donne à AXIOM TOUT le QCM (questions numérotées + réponses de l'élève) pour qu'il
// puisse répondre « explique la question N », et on signale laquelle est à l'écran.
function publierContexte() {
  const qz = quiz.value
  if (!qz || !qz.questions.length) return
  const idxCur = currentQuestionId.value
    ? qz.questions.findIndex((q) => q.id === currentQuestionId.value) + 1
    : 1
  const corps = qz.questions.map((q, i) => blocQuestion(q, i + 1)).join('\n\n')
  const entete = `QCM « ${qz.titre} » — ${qz.questions.length} questions.\n`
    + `L'élève regarde actuellement la Question ${idxCur} (s'il dit « cette question », il s'agit de celle-ci).\n\n`
  setContexteEtude({
    type: 'qcm',
    titre: qz.titre,
    extrait: entete + corps,
    ...(props.matiereSlug ? { matiere: props.matiereSlug } : {}),
    ...(props.chapitre ? { chapitre: props.chapitre } : {}),
  })
}

// Question « courante » = la plus haute dans une bande de lecture (~30–45 % du haut),
// pour coller à ce que l'élève regarde réellement (pas de décalage d'un cran).
const visibles = new Set<number>()
function setupObserver() {
  if (!import.meta.client) return
  observer?.disconnect()
  observer = new IntersectionObserver(
    (entries) => {
      for (const e of entries) {
        const qid = Number((e.target as HTMLElement).dataset.qid)
        if (e.isIntersecting) visibles.add(qid)
        else visibles.delete(qid)
      }
      const qz = quiz.value
      if (!qz) return
      const haut = qz.questions.find((q) => visibles.has(q.id))
      if (haut && haut.id !== currentQuestionId.value) {
        currentQuestionId.value = haut.id
        publierContexte()
      }
    },
    { rootMargin: '-30% 0px -55% 0px', threshold: 0 }
  )
  for (const el of cardEls.values()) observer.observe(el)
}

watch(quiz, async () => {
  if (!quiz.value?.questions.length) return
  currentQuestionId.value = quiz.value.questions[0].id
  await nextTick()
  setupObserver()
  publierContexte()
})

onBeforeUnmount(() => observer?.disconnect())
</script>

<template>
  <div v-if="loadError" class="text-center text-sm text-[#a8998a] py-8">QCM introuvable.</div>

  <div v-else-if="!quiz" class="text-center text-sm text-[#a8998a] py-8">Chargement du QCM…</div>

  <div v-else class="space-y-5">
    <header>
      <h2 class="text-lg font-bold text-ink">{{ quiz.titre }}</h2>
      <p v-if="quiz.description" class="text-sm text-[#a8998a]">{{ quiz.description }}</p>
    </header>

    <!-- Résultat -->
    <div v-if="result" class="rounded-xl border border-rule p-4 text-center">
      <p class="text-sm text-[#a8998a]">Ton résultat</p>
      <p class="text-3xl font-serif font-extrabold" :class="noteColor">{{ result.noteSur20 }}/20</p>
      <p class="mt-1 text-sm text-[#6b5f57]">{{ result.score }} / {{ result.total }} bonnes réponses</p>
      <button class="btn-ghost mt-3" @click="recommencer"><i class="fa-solid fa-rotate-right mr-1" />Recommencer</button>
    </div>

    <!-- Questions -->
    <div class="space-y-4">
      <div
        v-for="(q, idx) in quiz.questions"
        :key="q.id"
        :ref="(el) => setCard(el as Element | null, q.id)"
        :data-qid="q.id"
        class="rounded-xl border border-rule p-4"
      >
        <div class="mb-3 flex items-start gap-2">
          <span class="mt-0.5 flex h-6 w-6 flex-none items-center justify-center rounded-full bg-brand-light text-xs font-bold text-brand">
            {{ idx + 1 }}
          </span>
          <h3 dir="auto" class="font-semibold text-ink" v-html="inlineMath(q.enonce)" />
        </div>

        <div class="space-y-2">
          <button
            v-for="c in choixMelanges(q)"
            :key="c.id"
            type="button"
            :disabled="!!result"
            class="flex w-full items-center gap-3 rounded-lg border px-3 py-2 text-left text-sm transition"
            :class="choixClass(q.id, c.id)"
            @click="toggle(q.id, c.id)"
          >
            <span
              class="flex h-5 w-5 flex-none items-center justify-center rounded border text-xs"
              :class="isSelected(q.id, c.id) || detailPour(q.id)?.bonsChoix.includes(c.id) ? 'border-current' : 'border-rule'"
            >
              <span v-if="detailPour(q.id)?.bonsChoix.includes(c.id)">✓</span>
              <span v-else-if="isSelected(q.id, c.id)">•</span>
            </span>
            <span dir="auto" v-html="inlineMath(c.texte)" />
          </button>
        </div>

        <div
          v-if="detailPour(q.id)"
          class="mt-3 rounded-lg px-3 py-2 text-sm"
          :class="detailPour(q.id)!.correcte ? 'bg-green-50 text-theo' : 'bg-amber-50 text-amber-800'"
        >
          <span class="font-semibold">
            <i :class="detailPour(q.id)!.correcte ? 'fa-solid fa-circle-check mr-1' : 'fa-solid fa-lightbulb mr-1'" />{{ detailPour(q.id)!.correcte ? 'Correct' : 'À revoir' }}
          </span>
          <span v-if="detailPour(q.id)!.explication"> — <span v-html="inlineMath(detailPour(q.id)!.explication!)" /></span>
        </div>
      </div>
    </div>

    <!-- Action -->
    <div v-if="!result" class="sticky bottom-4 flex items-center justify-between rounded-xl bg-white p-4 shadow-md ring-1 ring-rule">
      <span class="text-sm text-[#a8998a]">{{ nbRepondues }} / {{ quiz.questions.length }} répondues</span>
      <button class="btn-primary" :disabled="submitting || nbRepondues === 0" @click="soumettre">
        {{ submitting ? 'Correction…' : 'Valider mes réponses' }}
      </button>
    </div>
  </div>
</template>
