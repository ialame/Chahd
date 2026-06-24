<script setup lang="ts">
interface Point {
  date: string
  noteSur20: number
  matiereSlug: string | null
  quizTitre: string | null
}
const props = defineProps<{ points: Point[] }>()

const MATS: Record<string, { nom: string; col: string }> = {
  maths: { nom: 'Maths', col: '#2563eb' },
  'physique-chimie': { nom: 'Physique-Chimie', col: '#dc2626' },
  svt: { nom: 'SVT', col: '#16a34a' },
  anglais: { nom: 'Anglais', col: '#7c3aed' },
  philosophie: { nom: 'Philosophie', col: '#0891b2' },
  francais: { nom: 'Français', col: '#ea580c' },
  informatique: { nom: 'Informatique', col: '#4f46e5' }
}
const couleur = (slug: string | null) => (slug && MATS[slug] ? MATS[slug].col : '#64748b')

// Filtre par matière (null = toutes).
const filtre = ref<string | null>(null)
const matieresDispo = computed(() => {
  const s = new Set<string>()
  props.points.forEach(p => { if (p.matiereSlug) s.add(p.matiereSlug) })
  return [...s].filter(m => MATS[m])
})
const pts = computed(() =>
  (filtre.value ? props.points.filter(p => p.matiereSlug === filtre.value) : props.points)
)

// Géométrie SVG.
const W = 480, H = 200, ML = 30, MR = 10, MT = 12, MB = 24
const plotW = W - ML - MR
const plotH = H - MT - MB
function x(i: number, n: number) { return n <= 1 ? ML + plotW / 2 : ML + (i / (n - 1)) * plotW }
function y(note: number) { return MT + (1 - note / 20) * plotH }

const geom = computed(() => {
  const p = pts.value
  const n = p.length
  const coords = p.map((pt, i) => ({ cx: x(i, n), cy: y(pt.noteSur20), pt }))
  const ligne = coords.map(c => `${c.cx.toFixed(1)},${c.cy.toFixed(1)}`).join(' ')
  const moyenne = n ? p.reduce((s, pt) => s + pt.noteSur20, 0) / n : 0
  return { coords, ligne, n, moyenne }
})

function fmtDate(d: string) {
  try { return new Date(d).toLocaleDateString('fr-FR', { day: '2-digit', month: '2-digit' }) }
  catch { return '' }
}
const gridNotes = [0, 5, 10, 15, 20]
</script>

<template>
  <div class="rounded border border-rule p-4">
    <div class="mb-3 flex flex-wrap items-center justify-between gap-2">
      <h2 class="text-sm font-semibold uppercase tracking-wide text-[#a8998a]">
        <i class="fa-solid fa-chart-line text-[#a8998a]" /> Évolution des scores
      </h2>
      <div v-if="matieresDispo.length > 1" class="flex gap-1 text-xs">
        <button
          class="rounded px-2 py-1 font-medium transition-colors"
          :class="filtre === null ? 'bg-brand text-white' : 'text-[#a8998a] hover:bg-rule'"
          @click="filtre = null"
        >Toutes</button>
        <button
          v-for="m in matieresDispo" :key="m"
          class="rounded px-2 py-1 font-medium transition-colors"
          :class="filtre === m ? 'text-white' : 'text-[#a8998a] hover:bg-rule'"
          :style="filtre === m ? { backgroundColor: MATS[m].col } : {}"
          @click="filtre = m"
        >{{ MATS[m].nom }}</button>
      </div>
    </div>

    <p v-if="geom.n === 0" class="py-10 text-center text-sm italic text-[#a8998a]">
      Aucun QCM réalisé pour l'instant. Vos scores apparaîtront ici au fil de vos quiz.
    </p>

    <template v-else>
      <svg :viewBox="`0 0 ${W} ${H}`" class="w-full" font-family="sans-serif">
        <!-- grille horizontale + labels Y -->
        <g>
          <template v-for="g in gridNotes" :key="g">
            <line :x1="ML" :x2="W - MR" :y1="y(g)" :y2="y(g)" stroke="#e2e8f0" stroke-width="1" />
            <text :x="ML - 5" :y="y(g) + 3" text-anchor="end" font-size="9" fill="#94a3b8">{{ g }}</text>
          </template>
        </g>
        <!-- ligne de moyenne -->
        <line
          :x1="ML" :x2="W - MR" :y1="y(geom.moyenne)" :y2="y(geom.moyenne)"
          stroke="#f59e0b" stroke-width="1" stroke-dasharray="4 3"
        />
        <text :x="W - MR" :y="y(geom.moyenne) - 3" text-anchor="end" font-size="8.5" fill="#d97706">
          moy. {{ geom.moyenne.toFixed(1) }}
        </text>
        <!-- courbe -->
        <polyline
          v-if="geom.n > 1" :points="geom.ligne"
          fill="none" stroke="#6366f1" stroke-width="2"
          stroke-linejoin="round" stroke-linecap="round"
        />
        <!-- points -->
        <g v-for="(c, i) in geom.coords" :key="i">
          <circle :cx="c.cx" :cy="c.cy" r="4" :fill="couleur(c.pt.matiereSlug)" stroke="#fff" stroke-width="1.5">
            <title>{{ fmtDate(c.pt.date) }} — {{ c.pt.quizTitre || 'QCM' }} : {{ c.pt.noteSur20 }}/20</title>
          </circle>
        </g>
        <!-- labels X (première et dernière date) -->
        <text v-if="geom.n" :x="ML" :y="H - 6" text-anchor="start" font-size="9" fill="#94a3b8">
          {{ fmtDate(geom.coords[0].pt.date) }}
        </text>
        <text v-if="geom.n > 1" :x="W - MR" :y="H - 6" text-anchor="end" font-size="9" fill="#94a3b8">
          {{ fmtDate(geom.coords[geom.n - 1].pt.date) }}
        </text>
      </svg>
      <p v-if="geom.n === 1" class="mt-1 text-center text-xs text-[#a8998a]">
        Réalisez d'autres QCM pour visualiser la progression.
      </p>
    </template>
  </div>
</template>
