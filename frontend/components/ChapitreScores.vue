<script setup lang="ts">
interface Item {
  matiereSlug: string | null
  leconTitre: string
  noteSur20: number
  quizFaits: number
}
const props = defineProps<{ items: Item[] }>()

const MATS: Record<string, { nom: string; col: string }> = {
  maths: { nom: 'Maths', col: '#2563eb' },
  'physique-chimie': { nom: 'Physique-Chimie', col: '#dc2626' },
  svt: { nom: 'SVT', col: '#16a34a' }
}
const couleur = (slug: string | null) => (slug && MATS[slug] ? MATS[slug].col : '#64748b')

const filtre = ref<string | null>(null)
const matieresDispo = computed(() => {
  const s = new Set<string>()
  props.items.forEach(i => { if (i.matiereSlug) s.add(i.matiereSlug) })
  return [...s].filter(m => MATS[m])
})
const liste = computed(() =>
  filtre.value ? props.items.filter(i => i.matiereSlug === filtre.value) : props.items
)
</script>

<template>
  <div class="rounded-2xl border border-slate-200 p-4">
    <div class="mb-3 flex flex-wrap items-center justify-between gap-2">
      <h2 class="text-sm font-semibold uppercase tracking-wide text-slate-500">
        <i class="fa-solid fa-chart-bar text-slate-400" /> Scores par chapitre
      </h2>
      <div v-if="matieresDispo.length > 1" class="flex gap-1 text-xs">
        <button
          class="rounded-lg px-2 py-1 font-medium transition-colors"
          :class="filtre === null ? 'bg-slate-800 text-white' : 'text-slate-500 hover:bg-slate-100'"
          @click="filtre = null"
        >Toutes</button>
        <button
          v-for="m in matieresDispo" :key="m"
          class="rounded-lg px-2 py-1 font-medium transition-colors"
          :class="filtre === m ? 'text-white' : 'text-slate-500 hover:bg-slate-100'"
          :style="filtre === m ? { backgroundColor: MATS[m].col } : {}"
          @click="filtre = m"
        >{{ MATS[m].nom }}</button>
      </div>
    </div>

    <p v-if="liste.length === 0" class="py-10 text-center text-sm italic text-slate-400">
      Aucun QCM réalisé pour l'instant. Vos scores par chapitre apparaîtront ici.
    </p>

    <div v-else class="space-y-2.5">
      <div v-for="(i, k) in liste" :key="k" class="text-xs">
        <div class="mb-0.5 flex items-baseline justify-between gap-2">
          <span class="truncate font-medium text-slate-700" :title="i.leconTitre">{{ i.leconTitre }}</span>
          <span class="shrink-0 font-bold" :style="{ color: couleur(i.matiereSlug) }">{{ i.noteSur20 }}/20</span>
        </div>
        <div class="h-2.5 overflow-hidden rounded-full bg-slate-100">
          <div
            class="h-full rounded-full transition-all"
            :style="{ width: (i.noteSur20 / 20 * 100) + '%', backgroundColor: couleur(i.matiereSlug) }"
          />
        </div>
      </div>
    </div>
  </div>
</template>
