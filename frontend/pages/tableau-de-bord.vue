<script setup lang="ts">
interface MatiereProg {
  slug: string
  nom: string
  lecons: number
  leconsLues: number
  leconsARevoir: number
  quizFaits: number
  moyenneSur20: number | null
  fichesDues: number
  fichesEnCours: number
}
interface TableauBord {
  fichesDuesAujourdhui: number
  fichesEnCours: number
  quizFaits: number
  moyenneGlobaleSur20: number | null
  matieres: MatiereProg[]
}

const { get } = useApi()
const { estConnecte } = useAuth()
const router = useRouter()

interface ScorePoint {
  date: string
  noteSur20: number
  matiereSlug: string | null
  quizTitre: string | null
}
interface ChapitreScore {
  matiereSlug: string | null
  leconTitre: string
  noteSur20: number
  quizFaits: number
}

const data = ref<TableauBord | null>(null)
const scores = ref<ScorePoint[]>([])
const chapitres = ref<ChapitreScore[]>([])
const chargement = ref(true)

async function charger() {
  chargement.value = true
  try {
    const [tb, sc, ch] = await Promise.all([
      get<TableauBord>('/me/tableau-de-bord'),
      get<ScorePoint[]>('/me/historique-scores'),
      get<ChapitreScore[]>('/me/scores-par-chapitre')
    ])
    data.value = tb
    scores.value = sc
    chapitres.value = ch
  } finally {
    chargement.value = false
  }
}

onMounted(() => {
  if (!estConnecte.value) {
    router.push('/connexion?redirect=/tableau-de-bord')
    return
  }
  charger()
})

const monos: Record<string, string> = { maths: '∑', 'physique-chimie': 'PC', svt: 'SVT', anglais: 'EN' }
function pct(m: MatiereProg) {
  return m.lecons ? Math.round((m.leconsLues / m.lecons) * 100) : 0
}
function couleurNote(n: number | null) {
  if (n === null) return 'text-[#a8998a]'
  if (n >= 14) return 'text-theo'
  if (n >= 10) return 'text-amber-600'
  return 'text-red-600'
}
</script>

<template>
  <div>
    <div class="mb-6 flex items-center justify-between">
      <h1 class="font-serif text-2xl font-bold text-brand"><i class="fa-solid fa-chart-simple" /> Tableau de bord</h1>
      <NuxtLink to="/mon-avancement" class="text-sm text-[#a8998a] hover:text-[#6b5f57]">
        Historique d'activité <i class="fa-solid fa-arrow-right text-xs" />
      </NuxtLink>
    </div>

    <div v-if="chargement" class="py-20 text-center text-[#a8998a]">
      <i class="fa-solid fa-spinner fa-spin text-2xl" />
    </div>

    <div v-else-if="data" class="space-y-6">
      <!-- Cartes du haut -->
      <div class="grid gap-3 sm:grid-cols-3">
        <div class="rounded border border-rule bg-brand-light p-4">
          <div class="text-xs font-semibold uppercase tracking-wide text-brand">Fiches à réviser</div>
          <div class="mt-1 font-serif text-3xl font-bold text-brand">{{ data.fichesDuesAujourdhui }}</div>
          <NuxtLink
            v-if="data.fichesDuesAujourdhui > 0"
            to="/reviser"
            class="mt-2 inline-block rounded bg-brand px-3 py-1.5 text-sm font-semibold text-white hover:bg-brand-dark"
          >
            <i class="fa-solid fa-play" /> Réviser maintenant
          </NuxtLink>
          <p v-else class="mt-2 text-xs text-[#a8998a]">Rien à réviser aujourd'hui.</p>
        </div>
        <div class="rounded border border-rule p-4">
          <div class="text-xs font-semibold uppercase tracking-wide text-[#a8998a]">QCM réalisés</div>
          <div class="mt-1 font-serif text-3xl font-bold text-ink">{{ data.quizFaits }}</div>
          <p class="mt-2 text-xs text-[#a8998a]">{{ data.fichesEnCours }} fiche(s) en cours d'apprentissage</p>
        </div>
        <div class="rounded border border-rule p-4">
          <div class="text-xs font-semibold uppercase tracking-wide text-[#a8998a]">Moyenne QCM</div>
          <div class="mt-1 font-serif text-3xl font-bold" :class="couleurNote(data.moyenneGlobaleSur20)">
            {{ data.moyenneGlobaleSur20 !== null ? data.moyenneGlobaleSur20 + ' / 20' : '—' }}
          </div>
          <p class="mt-2 text-xs text-[#a8998a]">sur l'ensemble des matières</p>
        </div>
      </div>

      <!-- Courbe d'évolution des scores -->
      <ScoreChart :points="scores" />

      <!-- Répartition des scores par chapitre -->
      <ChapitreScores :items="chapitres" />

      <!-- Par matière -->
      <div class="space-y-3">
        <h2 class="text-sm font-semibold uppercase tracking-wide text-[#a8998a]">Progression par matière</h2>
        <div v-for="m in data.matieres" :key="m.slug" class="rounded border border-rule p-4">
          <div class="flex items-center justify-between">
            <NuxtLink :to="`/matieres/${m.slug}`" class="flex items-center gap-2 font-bold text-ink hover:text-brand">
              <span class="flex h-7 w-7 items-center justify-center rounded bg-brand-light font-serif text-sm font-semibold text-brand">{{ monos[m.slug] || '∑' }}</span> {{ m.nom }}
            </NuxtLink>
            <span class="text-sm font-semibold text-[#6b5f57]">{{ m.leconsLues }} / {{ m.lecons }} leçons lues</span>
          </div>
          <div class="mt-2 h-2 overflow-hidden rounded-full bg-rule">
            <div class="h-full bg-brand transition-all" :style="{ width: pct(m) + '%' }" />
          </div>
          <div class="mt-3 flex flex-wrap gap-x-5 gap-y-1 text-xs text-[#a8998a]">
            <span><i class="fa-solid fa-circle-question text-[#a8998a]" /> {{ m.quizFaits }} QCM ·
              <span :class="couleurNote(m.moyenneSur20)" class="font-semibold">
                {{ m.moyenneSur20 !== null ? m.moyenneSur20 + '/20' : '—' }}
              </span>
            </span>
            <span><i class="fa-solid fa-layer-group text-[#a8998a]" /> {{ m.fichesEnCours }} fiches en cours,
              <span class="font-semibold text-brand">{{ m.fichesDues }} dues</span>
            </span>
            <span v-if="m.leconsARevoir > 0" class="text-amber-600">
              <i class="fa-solid fa-flag" /> {{ m.leconsARevoir }} à revoir
            </span>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
