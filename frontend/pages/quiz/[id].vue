<script setup lang="ts">
import type { QuizDto, QuizResultDto, QuestionResultDto } from '~/types/api'

const route = useRoute()
const id = Number(route.params.id)
const { get, post } = useApi()
const { enregistrerQuiz } = useProgression()

const { data: quiz, error } = await useAsyncData(
  `quiz-${id}`,
  () => get<QuizDto>(`/quiz/${id}`)
)

// Réponses sélectionnées : questionId -> ensemble de choixId
const selections = reactive<Record<number, Set<number>>>({})
const result = ref<QuizResultDto | null>(null)
const submitting = ref(false)

function toggle(questionId: number, choixId: number) {
  if (result.value) return // verrouillé après correction
  const set = selections[questionId] ?? (selections[questionId] = new Set())
  if (set.has(choixId)) set.delete(choixId)
  else set.add(choixId)
}

const isSelected = (questionId: number, choixId: number) =>
  selections[questionId]?.has(choixId) ?? false

const nbRepondues = computed(() =>
  quiz.value ? quiz.value.questions.filter((q) => (selections[q.id]?.size ?? 0) > 0).length : 0
)

function detailPour(questionId: number): QuestionResultDto | undefined {
  return result.value?.details.find((d) => d.questionId === questionId)
}

// Classe visuelle d'un choix après correction
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
    for (const q of quiz.value.questions) {
      reponses[q.id] = Array.from(selections[q.id] ?? [])
    }
    const res = await post<QuizResultDto>(`/quiz/${id}/correction`, { reponses })
    result.value = res
    enregistrerQuiz(res, {
      titre: quiz.value.titre,
      matiereSlug: (route.query.matiere as string) || ''
    })
    if (import.meta.client) window.scrollTo({ top: 0, behavior: 'smooth' })
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
  <div v-if="error" class="card text-center text-slate-500">
    Quiz introuvable. <NuxtLink to="/matieres" class="text-brand-dark underline">Retour aux matières</NuxtLink>
  </div>

  <div v-else-if="quiz" class="mx-auto max-w-2xl space-y-6">
    <header>
      <h1 class="text-2xl font-bold text-slate-900">{{ quiz.titre }}</h1>
      <p v-if="quiz.description" class="text-slate-500">{{ quiz.description }}</p>
    </header>

    <!-- Résultat -->
    <div v-if="result" class="card text-center">
      <p class="text-sm text-slate-500">Ton résultat</p>
      <p class="text-4xl font-extrabold" :class="noteColor">{{ result.noteSur20 }}/20</p>
      <p class="mt-1 text-slate-600">{{ result.score }} / {{ result.total }} bonnes réponses</p>
      <div class="mt-4 flex justify-center gap-3">
        <button class="btn-ghost" @click="recommencer">↻ Recommencer</button>
        <NuxtLink to="/matieres" class="btn-primary">Continuer à réviser</NuxtLink>
      </div>
    </div>

    <!-- Questions -->
    <div class="space-y-5">
      <div v-for="(q, idx) in quiz.questions" :key="q.id" class="card">
        <div class="mb-3 flex items-start gap-2">
          <span class="mt-0.5 flex h-6 w-6 flex-none items-center justify-center rounded-full bg-brand/10 text-xs font-bold text-brand-dark">
            {{ idx + 1 }}
          </span>
          <h3 class="font-semibold text-slate-900">{{ q.enonce }}</h3>
        </div>

        <div class="space-y-2">
          <button
            v-for="c in q.choix"
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
            <span>{{ c.texte }}</span>
          </button>
        </div>

        <!-- Explication après correction -->
        <div
          v-if="detailPour(q.id)"
          class="mt-3 rounded-lg px-3 py-2 text-sm"
          :class="detailPour(q.id)!.correcte ? 'bg-green-50 text-green-800' : 'bg-amber-50 text-amber-800'"
        >
          <span class="font-semibold">{{ detailPour(q.id)!.correcte ? '✅ Correct' : '💡 À revoir' }}</span>
          <span v-if="detailPour(q.id)!.explication"> — {{ detailPour(q.id)!.explication }}</span>
        </div>
      </div>
    </div>

    <!-- Barre d'action -->
    <div v-if="!result" class="sticky bottom-4 flex items-center justify-between rounded-xl bg-white p-4 shadow-md ring-1 ring-slate-100">
      <span class="text-sm text-slate-500">{{ nbRepondues }} / {{ quiz.questions.length }} répondues</span>
      <button class="btn-primary" :disabled="submitting || nbRepondues === 0" @click="soumettre">
        {{ submitting ? 'Correction…' : 'Valider mes réponses' }}
      </button>
    </div>
  </div>
</template>
