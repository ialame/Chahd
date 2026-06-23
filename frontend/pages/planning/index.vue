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

// Monogrammes typographiques par matière (à la place des emoji).
const monos: Record<string, string> = {
  maths: '∑',
  'physique-chimie': 'PC',
  svt: 'SVT',
  anglais: 'EN',
  philosophie: 'ف',
  francais: 'FR'
}
function mono(slug: string) {
  return monos[slug] ?? '∑'
}
</script>

<template>
  <div class="space-y-8">
    <header>
      <h1 class="text-2xl font-bold text-ink">Mon planning de révision</h1>
      <p class="text-[#a8998a]">Organise tes révisions et suis ta progression vers le rattrapage.</p>
    </header>

    <!-- Compte à rebours + moyenne -->
    <section class="grid gap-4 sm:grid-cols-3">
      <div class="card sm:col-span-1">
        <label class="text-xs font-medium text-[#a8998a]">Date de l'examen</label>
        <input
          v-model="dateExamen"
          type="date"
          class="mt-1 w-full rounded-lg border border-rule px-3 py-2 text-sm"
        />
        <p v-if="joursRestants !== null" class="mt-2 text-sm">
          <span class="font-serif text-2xl font-extrabold text-brand">{{ joursRestants }}</span>
          <span class="text-[#a8998a]"> jour(s) restants</span>
        </p>
      </div>
      <div class="card text-center">
        <p class="text-xs text-[#a8998a]">Moyenne QCM (simple)</p>
        <p class="font-serif text-3xl font-extrabold text-brand">
          {{ moyenneGenerale !== null ? moyenneGenerale + '/20' : '—' }}
        </p>
      </div>
      <div class="card text-center">
        <p class="text-xs text-[#a8998a]">Moyenne pondérée (coef.)</p>
        <p class="font-serif text-3xl font-extrabold text-brand">
          {{ moyennePonderee !== null ? moyennePonderee + '/20' : '—' }}
        </p>
      </div>
    </section>

    <!-- Progression par matière -->
    <section>
      <h2 class="mb-3 text-lg font-bold text-ink">Progression par matière</h2>
      <div class="space-y-3">
        <div v-for="m in matieres" :key="m.id" class="card flex items-center gap-4">
          <span class="flex h-12 w-12 items-center justify-center rounded bg-brand-light font-serif text-xl font-semibold text-brand">{{ mono(m.slug) }}</span>
          <div class="flex-1">
            <div class="flex items-center justify-between">
              <span class="font-medium text-ink">{{ m.nom }}</span>
              <span class="text-sm text-[#a8998a]">
                {{ moyenneParMatiere(m.slug) !== null ? moyenneParMatiere(m.slug) + '/20' : 'Pas encore évalué' }}
              </span>
            </div>
            <div class="mt-1.5 h-2 w-full overflow-hidden rounded-full bg-rule">
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
        <h2 class="text-lg font-bold text-ink">Historique des quiz</h2>
        <button class="text-xs text-[#a8998a] hover:text-red-500" @click="reinitialiser">Réinitialiser</button>
      </div>
      <ul class="divide-y divide-rule overflow-hidden rounded-xl bg-white ring-1 ring-rule">
        <li v-for="s in quizFaits" :key="s.quizId" class="flex items-center justify-between px-4 py-3 text-sm">
          <span class="text-[#6b5f57]">{{ s.titre }}</span>
          <span class="flex items-center gap-3">
            <span class="text-xs text-[#a8998a]">{{ formatDate(s.date) }}</span>
            <span class="font-semibold text-brand">{{ s.noteSur20 }}/20</span>
          </span>
        </li>
      </ul>
    </section>

    <!-- Conseils -->
    <section class="card bg-brand-light ring-brand/20">
      <h2 class="mb-2 text-lg font-bold text-brand"><i class="fa-solid fa-lightbulb" /> Conseils pour le rattrapage</h2>
      <ul class="list-disc space-y-1 pl-5 text-sm text-[#6b5f57]">
        <li v-for="(c, i) in conseils" :key="i">{{ c }}</li>
      </ul>
    </section>
  </div>
</template>
