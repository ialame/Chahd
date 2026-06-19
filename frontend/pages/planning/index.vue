<script setup lang="ts">
import type { MatiereDto } from '~/types/api'

const { get } = useApi()
const { data: matieres } = await useAsyncData('matieres-planning', () => get<MatiereDto[]>('/matieres'))

const { quizFaits, moyenneGenerale, moyenneParMatiere, reinitialiser } = useProgression()

// Date de l'examen — persistée dans le navigateur
const DATE_KEY = 'chahd:dateExamen'
const dateExamen = ref<string>('')

onMounted(() => {
  dateExamen.value = localStorage.getItem(DATE_KEY) || ''
})
watch(dateExamen, (v) => {
  if (import.meta.client) localStorage.setItem(DATE_KEY, v)
})

const joursRestants = computed(() => {
  if (!dateExamen.value) return null
  const diff = new Date(dateExamen.value).getTime() - Date.now()
  return Math.max(0, Math.ceil(diff / (1000 * 60 * 60 * 24)))
})

// Moyenne générale pondérée par les coefficients (sur les matières déjà travaillées)
const moyennePonderee = computed(() => {
  if (!matieres.value) return null
  let sommeNotes = 0
  let sommeCoef = 0
  for (const m of matieres.value) {
    const moy = moyenneParMatiere(m.slug)
    if (moy !== null) {
      sommeNotes += moy * m.coefficient
      sommeCoef += m.coefficient
    }
  }
  if (sommeCoef === 0) return null
  return Math.round((sommeNotes / sommeCoef) * 100) / 100
})

const conseils = [
  'Commence par les matières à fort coefficient (Maths, Physique-Chimie).',
  'Refais les annales de rattrapage en conditions d\'examen (chronométré).',
  'Après chaque chapitre, fais le quiz pour vérifier tes acquis.',
  'Revois en priorité les chapitres où ta note QCM est inférieure à 10/20.'
]

function formatDate(iso: string) {
  return new Date(iso).toLocaleDateString('fr-FR', { day: 'numeric', month: 'short', year: 'numeric' })
}
</script>

<template>
  <div class="space-y-8">
    <header>
      <h1 class="text-2xl font-bold text-slate-900">Mon planning de révision</h1>
      <p class="text-slate-500">Organise tes révisions et suis ta progression vers le rattrapage.</p>
    </header>

    <!-- Compte à rebours + moyenne -->
    <section class="grid gap-4 sm:grid-cols-3">
      <div class="card sm:col-span-1">
        <label class="text-xs font-medium text-slate-500">Date de l'examen</label>
        <input
          v-model="dateExamen"
          type="date"
          class="mt-1 w-full rounded-lg border border-slate-200 px-3 py-2 text-sm"
        />
        <p v-if="joursRestants !== null" class="mt-2 text-sm">
          <span class="text-2xl font-extrabold text-brand-dark">{{ joursRestants }}</span>
          <span class="text-slate-500"> jour(s) restants</span>
        </p>
      </div>
      <div class="card text-center">
        <p class="text-xs text-slate-500">Moyenne QCM (simple)</p>
        <p class="text-3xl font-extrabold text-brand-dark">
          {{ moyenneGenerale !== null ? moyenneGenerale + '/20' : '—' }}
        </p>
      </div>
      <div class="card text-center">
        <p class="text-xs text-slate-500">Moyenne pondérée (coef.)</p>
        <p class="text-3xl font-extrabold text-brand-dark">
          {{ moyennePonderee !== null ? moyennePonderee + '/20' : '—' }}
        </p>
      </div>
    </section>

    <!-- Progression par matière -->
    <section>
      <h2 class="mb-3 text-lg font-bold text-slate-900">Progression par matière</h2>
      <div class="space-y-3">
        <div v-for="m in matieres" :key="m.id" class="card flex items-center gap-4">
          <span class="text-2xl">{{ m.icone ?? '📘' }}</span>
          <div class="flex-1">
            <div class="flex items-center justify-between">
              <span class="font-medium text-slate-800">{{ m.nom }}</span>
              <span class="text-sm text-slate-500">
                {{ moyenneParMatiere(m.slug) !== null ? moyenneParMatiere(m.slug) + '/20' : 'Pas encore évalué' }}
              </span>
            </div>
            <div class="mt-1.5 h-2 w-full overflow-hidden rounded-full bg-slate-100">
              <div
                class="h-full rounded-full bg-brand transition-all"
                :style="{ width: ((moyenneParMatiere(m.slug) ?? 0) / 20 * 100) + '%' }"
              />
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Historique des quiz -->
    <section v-if="quizFaits.length">
      <div class="mb-3 flex items-center justify-between">
        <h2 class="text-lg font-bold text-slate-900">Historique des quiz</h2>
        <button class="text-xs text-slate-400 hover:text-red-500" @click="reinitialiser">Réinitialiser</button>
      </div>
      <ul class="divide-y divide-slate-100 overflow-hidden rounded-xl bg-white ring-1 ring-slate-100">
        <li v-for="s in quizFaits" :key="s.quizId" class="flex items-center justify-between px-4 py-3 text-sm">
          <span class="text-slate-700">{{ s.titre }}</span>
          <span class="flex items-center gap-3">
            <span class="text-xs text-slate-400">{{ formatDate(s.date) }}</span>
            <span class="font-semibold text-brand-dark">{{ s.noteSur20 }}/20</span>
          </span>
        </li>
      </ul>
    </section>

    <!-- Conseils -->
    <section class="card bg-brand/5 ring-brand/20">
      <h2 class="mb-2 text-lg font-bold text-brand-dark">💡 Conseils pour le rattrapage</h2>
      <ul class="list-disc space-y-1 pl-5 text-sm text-slate-700">
        <li v-for="(c, i) in conseils" :key="i">{{ c }}</li>
      </ul>
    </section>
  </div>
</template>
