<script setup lang="ts">
import { inlineMath } from '~/utils/inlineMath'

interface Carte {
  leconId: number
  ficheIndex: number
  question: string
  reponse: string
  matiereSlug: string
  leconSlug: string
  leconTitre: string
  statut: string
  prochaineRevision: string | null
}

const { get, post } = useApi()
const { estConnecte } = useAuth()
const route = useRoute()
const router = useRouter()

const leconId = computed(() => {
  const q = route.query.lecon
  return q ? Number(q) : null
})

const cartes = ref<Carte[]>([])
const idx = ref(0)
const revealed = ref(false)
const chargement = ref(true)
const notes = ref(0)

async function charger() {
  chargement.value = true
  try {
    let data: Carte[]
    if (leconId.value) {
      data = await get<Carte[]>(`/revision/lecon/${leconId.value}`)
      // On révise les fiches nouvelles ou dues.
      data = data.filter(c => c.statut === 'NOUVELLE' || c.statut === 'DUE')
    } else {
      data = await get<Carte[]>('/revision/du-jour')
    }
    cartes.value = data
    idx.value = 0
    revealed.value = false
    notes.value = 0
  } finally {
    chargement.value = false
  }
}

onMounted(() => {
  if (!estConnecte.value) {
    router.push('/connexion?redirect=/reviser')
    return
  }
  charger()
})

const total = computed(() => cartes.value.length)
const courante = computed(() => cartes.value[idx.value] ?? null)
const termine = computed(() => !chargement.value && idx.value >= total.value && total.value >= 0 && courante.value === null)

const matiereNom: Record<string, string> = {
  maths: 'Maths', 'physique-chimie': 'Physique-Chimie', svt: 'SVT', anglais: 'Anglais', philosophie: 'Philosophie', francais: 'Français', informatique: 'Informatique'
}

async function noter(qualite: number) {
  const c = courante.value
  if (!c) return
  // Optimiste : on avance tout de suite, l'appel se fait en arrière-plan.
  try {
    await post('/revision/noter', { leconId: c.leconId, ficheIndex: c.ficheIndex, qualite })
  } catch (e) {
    // on continue malgré tout
  }
  notes.value++
  idx.value++
  revealed.value = false
}
</script>

<template>
  <div class="mx-auto max-w-2xl">
    <div class="mb-6 flex items-center justify-between">
      <div>
        <h1 class="font-serif text-2xl font-bold text-brand">
          <i class="fa-solid fa-layer-group" /> Réviser
        </h1>
        <p class="text-sm text-[#a8998a]">
          {{ leconId ? 'Fiches de ce chapitre' : 'Vos fiches à réviser aujourd\'hui' }} — répétition espacée
        </p>
      </div>
      <NuxtLink to="/tableau-de-bord" class="rounded border border-rule px-3 py-1.5 text-sm text-[#6b5f57] hover:bg-paper">
        <i class="fa-solid fa-chart-simple" /> Tableau de bord
      </NuxtLink>
    </div>

    <!-- Chargement -->
    <div v-if="chargement" class="py-20 text-center text-[#a8998a]">
      <i class="fa-solid fa-spinner fa-spin text-2xl" />
      <p class="mt-2 text-sm">Chargement des fiches…</p>
    </div>

    <!-- Rien à réviser -->
    <div v-else-if="total === 0" class="rounded border-2 border-dashed border-rule py-16 text-center">
      <div class="text-3xl text-[#d8c6b0]"><i class="fa-regular fa-circle-check" /></div>
      <p class="mt-3 font-semibold text-ink">Aucune fiche à réviser pour l'instant !</p>
      <p class="mt-1 text-sm text-[#a8998a]">
        Ouvrez les fiches d'un chapitre et lancez une révision pour alimenter votre file.
      </p>
      <NuxtLink to="/matieres" class="mt-5 inline-block rounded bg-brand px-4 py-2 font-semibold text-white hover:bg-brand-dark">
        Parcourir les matières
      </NuxtLink>
    </div>

    <!-- Terminé -->
    <div v-else-if="termine" class="rounded border-2 border-theo/30 bg-theo/5 py-16 text-center">
      <div class="text-3xl text-theo"><i class="fa-solid fa-circle-check" /></div>
      <p class="mt-3 text-lg font-bold text-theo">Session terminée !</p>
      <p class="mt-1 text-sm text-[#6b5f57]">{{ notes }} fiche(s) révisée(s). Bravo.</p>
      <div class="mt-5 flex justify-center gap-2">
        <button class="rounded border border-rule px-4 py-2 text-sm font-medium text-[#6b5f57] hover:bg-white" @click="charger">
          <i class="fa-solid fa-rotate-right" /> Recommencer
        </button>
        <NuxtLink to="/tableau-de-bord" class="rounded bg-brand px-4 py-2 text-sm font-semibold text-white hover:bg-brand-dark">
          Voir ma progression
        </NuxtLink>
      </div>
    </div>

    <!-- Révision -->
    <div v-else-if="courante" class="space-y-4">
      <!-- progression -->
      <div class="flex items-center justify-between text-xs text-[#a8998a]">
        <span>Fiche {{ idx + 1 }} / {{ total }}</span>
        <span class="rounded-full bg-rule px-2 py-0.5 font-medium text-[#6b5f57]">
          {{ matiereNom[courante.matiereSlug] || courante.matiereSlug }} · {{ courante.leconTitre }}
        </span>
      </div>
      <div class="h-1.5 overflow-hidden rounded-full bg-rule">
        <div class="h-full bg-brand transition-all" :style="{ width: (idx / total * 100) + '%' }" />
      </div>

      <!-- carte -->
      <div
        class="flex min-h-[240px] cursor-pointer flex-col items-center justify-center rounded border-2 p-6 text-center transition-colors"
        :class="revealed ? 'border-theo/30 bg-theo/5' : 'border-rule bg-paper'"
        @click="revealed = !revealed"
      >
        <span class="mb-3 text-[11px] font-bold uppercase tracking-widest" :class="revealed ? 'text-theo' : 'text-brand'">
          {{ revealed ? 'Réponse' : 'Question' }}
        </span>
        <div class="leading-relaxed text-ink" v-html="inlineMath(revealed ? courante.reponse : courante.question)" />
        <span v-if="!revealed" class="mt-4 text-[11px] text-[#a8998a]">Cliquez pour révéler la réponse</span>
      </div>

      <!-- boutons -->
      <div v-if="!revealed" class="text-center">
        <button class="rounded bg-brand px-6 py-2.5 font-semibold text-white hover:bg-brand-dark" @click="revealed = true">
          Révéler la réponse
        </button>
      </div>
      <div v-else class="grid grid-cols-3 gap-2">
        <button class="rounded border-2 border-red-200 bg-red-50 py-3 text-sm font-semibold text-red-700 hover:bg-red-100" @click="noter(1)">
          <div class="text-base"><i class="fa-solid fa-rotate-left" /></div>
          À revoir
          <div class="text-[10px] font-normal text-red-400">demain</div>
        </button>
        <button class="rounded border-2 border-amber-200 bg-amber-50 py-3 text-sm font-semibold text-amber-700 hover:bg-amber-100" @click="noter(3)">
          <div class="text-base"><i class="fa-regular fa-face-meh" /></div>
          Moyen
          <div class="text-[10px] font-normal text-amber-400">bientôt</div>
        </button>
        <button class="rounded border-2 border-theo/40 bg-theo/10 py-3 text-sm font-semibold text-theo hover:bg-theo/20" @click="noter(5)">
          <div class="text-base"><i class="fa-regular fa-face-smile" /></div>
          Facile
          <div class="text-[10px] font-normal text-theo/70">plus tard</div>
        </button>
      </div>
    </div>
  </div>
</template>
