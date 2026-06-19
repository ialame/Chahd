import type { QuizResultDto } from '~/types/api'

// Suivi de progression de l'élève, persisté dans le navigateur (localStorage).

const STORAGE_KEY = 'chahd:progression:v1'

export interface QuizScore {
  quizId: number
  titre: string
  matiereSlug: string
  score: number
  total: number
  noteSur20: number
  date: string
}

interface ProgressionState {
  quizScores: Record<number, QuizScore>
}

function emptyState(): ProgressionState {
  return { quizScores: {} }
}

export const useProgression = () => {
  const state = useState<ProgressionState>('chahd-progression', emptyState)

  const load = () => {
    if (!import.meta.client) return
    try {
      const raw = localStorage.getItem(STORAGE_KEY)
      if (raw) state.value = { ...emptyState(), ...JSON.parse(raw) }
    } catch {
      state.value = emptyState()
    }
  }

  const persist = () => {
    if (!import.meta.client) return
    localStorage.setItem(STORAGE_KEY, JSON.stringify(state.value))
  }

  const enregistrerQuiz = (
    result: QuizResultDto,
    meta: { titre: string; matiereSlug: string }
  ) => {
    state.value.quizScores[result.quizId] = {
      quizId: result.quizId,
      titre: meta.titre,
      matiereSlug: meta.matiereSlug,
      score: result.score,
      total: result.total,
      noteSur20: result.noteSur20,
      date: new Date().toISOString()
    }
    persist()
  }

  const scoreQuiz = (quizId: number): QuizScore | undefined => state.value.quizScores[quizId]

  const reinitialiser = () => {
    state.value = emptyState()
    persist()
  }

  const quizFaits = computed(() => Object.values(state.value.quizScores))

  const nbQuizFaits = computed(() => quizFaits.value.length)

  const moyenneGenerale = computed(() => {
    const scores = quizFaits.value
    if (scores.length === 0) return null
    const somme = scores.reduce((acc, s) => acc + s.noteSur20, 0)
    return Math.round((somme / scores.length) * 100) / 100
  })

  const moyenneParMatiere = (matiereSlug: string) => {
    const scores = quizFaits.value.filter((s) => s.matiereSlug === matiereSlug)
    if (scores.length === 0) return null
    const somme = scores.reduce((acc, s) => acc + s.noteSur20, 0)
    return Math.round((somme / scores.length) * 100) / 100
  }

  return {
    state,
    load,
    enregistrerQuiz,
    scoreQuiz,
    reinitialiser,
    quizFaits,
    nbQuizFaits,
    moyenneGenerale,
    moyenneParMatiere
  }
}
