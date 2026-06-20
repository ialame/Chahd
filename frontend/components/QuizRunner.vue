<script setup lang="ts">
import type { QuizDto, QuizResultDto, QuestionResultDto } from '~/types/api'
import { inlineMath } from '~/utils/inlineMath'

const props = defineProps<{ quizId: number; matiereSlug?: string }>()

const { get, post } = useApi()
const { enregistrerQuiz } = useProgression()
const { track } = useActivite()

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
      ? 'border-brand bg-brand/10 ring-1 ring-brand'
      : 'border-slate-200 hover:border-brand/50 hover:bg-slate-50'
  }
  const estBon = d.bonsChoix.includes(choixId)
  const estCoche = d.choixSelectionnes.includes(choixId)
  if (estBon) return 'border-green-500 bg-green-50'
  if (estCoche && !estBon) return 'border-red-400 bg-red-50'
  return 'border-slate-200 opacity-70'
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
    track({ type: 'quiz', matiere: props.matiereSlug, item: 'quiz', label: quiz.value.titre, note: res.noteSur20 })
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
</script>

<template>
  <div v-if="loadError" class="text-center text-sm text-slate-500 py-8">QCM introuvable.</div>

  <div v-else-if="!quiz" class="text-center text-sm text-slate-400 py-8">Chargement du QCM…</div>

  <div v-else class="space-y-5">
    <header>
      <h2 class="text-lg font-bold text-slate-900">{{ quiz.titre }}</h2>
      <p v-if="quiz.description" class="text-sm text-slate-500">{{ quiz.description }}</p>
    </header>

    <!-- Résultat -->
    <div v-if="result" class="rounded-xl border border-slate-200 p-4 text-center">
      <p class="text-sm text-slate-500">Ton résultat</p>
      <p class="text-3xl font-extrabold" :class="noteColor">{{ result.noteSur20 }}/20</p>
      <p class="mt-1 text-sm text-slate-600">{{ result.score }} / {{ result.total }} bonnes réponses</p>
      <button class="btn-ghost mt-3" @click="recommencer">↻ Recommencer</button>
    </div>

    <!-- Questions -->
    <div class="space-y-4">
      <div v-for="(q, idx) in quiz.questions" :key="q.id" class="rounded-xl border border-slate-200 p-4">
        <div class="mb-3 flex items-start gap-2">
          <span class="mt-0.5 flex h-6 w-6 flex-none items-center justify-center rounded-full bg-brand/10 text-xs font-bold text-brand-dark">
            {{ idx + 1 }}
          </span>
          <h3 class="font-semibold text-slate-900" v-html="inlineMath(q.enonce)" />
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
              :class="isSelected(q.id, c.id) || detailPour(q.id)?.bonsChoix.includes(c.id) ? 'border-current' : 'border-slate-300'"
            >
              <span v-if="detailPour(q.id)?.bonsChoix.includes(c.id)">✓</span>
              <span v-else-if="isSelected(q.id, c.id)">•</span>
            </span>
            <span v-html="inlineMath(c.texte)" />
          </button>
        </div>

        <div
          v-if="detailPour(q.id)"
          class="mt-3 rounded-lg px-3 py-2 text-sm"
          :class="detailPour(q.id)!.correcte ? 'bg-green-50 text-green-800' : 'bg-amber-50 text-amber-800'"
        >
          <span class="font-semibold">{{ detailPour(q.id)!.correcte ? '✅ Correct' : '💡 À revoir' }}</span>
          <span v-if="detailPour(q.id)!.explication"> — <span v-html="inlineMath(detailPour(q.id)!.explication!)" /></span>
        </div>
      </div>
    </div>

    <!-- Action -->
    <div v-if="!result" class="sticky bottom-4 flex items-center justify-between rounded-xl bg-white p-4 shadow-md ring-1 ring-slate-100">
      <span class="text-sm text-slate-500">{{ nbRepondues }} / {{ quiz.questions.length }} répondues</span>
      <button class="btn-primary" :disabled="submitting || nbRepondues === 0" @click="soumettre">
        {{ submitting ? 'Correction…' : 'Valider mes réponses' }}
      </button>
    </div>
  </div>
</template>
