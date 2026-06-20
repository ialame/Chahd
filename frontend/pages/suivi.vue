<script setup lang="ts">
import type { LeconDto } from '~/types/api'

interface Activite {
  id: number
  visiteur: string | null
  type: string
  matiere: string | null
  chapitre: string | null
  item: string | null
  label: string | null
  note: number | null
  creeLe: string
}

const { get } = useApi()

const cle = ref('')
const saisieCle = ref('')
const events = ref<Activite[]>([])
const erreur = ref('')
const filtreVisiteur = ref('')
const dernierRefresh = ref<Date | null>(null)
let timer: ReturnType<typeof setInterval> | null = null

// Structure Maths (dénominateur du taux d'avancement).
const { data: lecons } = await useAsyncData('suivi-maths', () => get<LeconDto[]>('/matieres/maths/cours'))
const totalItemsMaths = computed(() =>
  (lecons.value ?? []).reduce(
    (n, l) => n + (l.aContenu ? 1 : 0) + (l.aExercices ? 1 : 0) + (l.aProblemes ? 1 : 0) + (l.aFiches ? 1 : 0) + (l.quizId ? 1 : 0),
    0
  )
)

async function charger() {
  try {
    events.value = await get<Activite[]>(`/admin/suivi?cle=${encodeURIComponent(cle.value)}`)
    erreur.value = ''
    dernierRefresh.value = new Date()
    if (import.meta.client) localStorage.setItem('chahd:suivi:cle', cle.value)
  } catch {
    erreur.value = 'Clé invalide ou accès refusé.'
    cle.value = ''
  }
}

function valider() {
  cle.value = saisieCle.value.trim()
  if (cle.value) charger()
}

onMounted(() => {
  cle.value = localStorage.getItem('chahd:suivi:cle') || ''
  if (cle.value) charger()
  timer = setInterval(() => { if (cle.value && !erreur.value) charger() }, 12000)
})
onUnmounted(() => { if (timer) clearInterval(timer) })

const visiteurs = computed(() => [...new Set(events.value.map((e) => e.visiteur).filter(Boolean))] as string[])
const evFiltres = computed(() => (filtreVisiteur.value ? events.value.filter((e) => e.visiteur === filtreVisiteur.value) : events.value))

const itemsConsultes = computed(() => {
  const s = new Set<string>()
  for (const e of evFiltres.value)
    if (e.matiere === 'maths' && e.chapitre && e.item && ['cours', 'exercices', 'problemes', 'fiches'].includes(e.item))
      s.add(e.chapitre + '|' + e.item)
  return s.size
})
const quizDone = computed(() =>
  new Set(evFiltres.value.filter((e) => e.matiere === 'maths' && e.type === 'quiz' && e.note != null).map((e) => e.label)).size
)
const taux = computed(() =>
  totalItemsMaths.value ? Math.round(((itemsConsultes.value + quizDone.value) / totalItemsMaths.value) * 100) : 0
)
const quizScores = computed(() => evFiltres.value.filter((e) => e.type === 'quiz' && e.note != null))

const ITEM_LABEL: Record<string, string> = {
  cours: '📘 Cours', exercices: '✅ Exercices', problemes: '🧩 Problèmes', fiches: '🗂 Fiches',
  quiz: '📋 QCM', annale: '📄 Annale', page: '🔖 Page'
}

function relatif(iso: string): string {
  const d = (Date.now() - new Date(iso).getTime()) / 1000
  if (d < 60) return 'à l\'instant'
  if (d < 3600) return `il y a ${Math.floor(d / 60)} min`
  if (d < 86400) return `il y a ${Math.floor(d / 3600)} h`
  return new Date(iso).toLocaleDateString('fr-FR')
}
function heure(iso: string): string {
  return new Date(iso).toLocaleTimeString('fr-FR', { hour: '2-digit', minute: '2-digit' })
}
</script>

<template>
  <div class="mx-auto max-w-3xl space-y-6">
    <!-- Portail de clé -->
    <div v-if="!cle || erreur" class="card mx-auto max-w-md space-y-3 text-center">
      <h1 class="text-xl font-bold text-slate-900">🔒 Suivi élève</h1>
      <p class="text-sm text-slate-500">Accès réservé. Entrez la clé de suivi.</p>
      <input
        v-model="saisieCle"
        type="password"
        placeholder="Clé"
        class="w-full rounded-lg border border-slate-200 px-3 py-2 text-sm"
        @keyup.enter="valider"
      />
      <p v-if="erreur" class="text-sm text-red-600">{{ erreur }}</p>
      <button class="btn-primary w-full" @click="valider">Accéder</button>
    </div>

    <template v-else>
      <header class="flex items-center justify-between">
        <div>
          <h1 class="text-2xl font-bold text-slate-900">Suivi de l'élève</h1>
          <p class="text-xs text-slate-400">
            Mis à jour {{ dernierRefresh ? relatif(dernierRefresh.toISOString()) : '…' }} · auto toutes les 12 s
          </p>
        </div>
        <select v-model="filtreVisiteur" class="rounded-lg border border-slate-200 px-2 py-1 text-sm">
          <option value="">Tous les visiteurs</option>
          <option v-for="v in visiteurs" :key="v" :value="v">{{ v }}</option>
        </select>
      </header>

      <!-- Taux d'avancement Maths -->
      <div class="card space-y-2">
        <div class="flex items-center justify-between">
          <span class="font-semibold text-slate-800">Avancement — Maths</span>
          <span class="text-2xl font-extrabold text-brand-dark">{{ taux }}%</span>
        </div>
        <div class="h-2 overflow-hidden rounded-full bg-slate-100">
          <div class="h-full bg-brand transition-all" :style="{ width: taux + '%' }" />
        </div>
        <p class="text-xs text-slate-500">
          {{ itemsConsultes + quizDone }} / {{ totalItemsMaths }} éléments abordés
          ({{ itemsConsultes }} consultés · {{ quizDone }} QCM faits)
        </p>
      </div>

      <!-- Scores QCM -->
      <div v-if="quizScores.length" class="card">
        <h2 class="mb-2 font-semibold text-slate-800">Scores aux QCM</h2>
        <ul class="space-y-1 text-sm">
          <li v-for="(q, i) in quizScores.slice(0, 12)" :key="i" class="flex items-center justify-between">
            <span class="truncate text-slate-700">{{ q.label }}</span>
            <span class="ml-3 shrink-0 font-bold" :class="(q.note ?? 0) >= 10 ? 'text-green-600' : 'text-red-600'">
              {{ q.note }}/20 <span class="font-normal text-slate-400">· {{ relatif(q.creeLe) }}</span>
            </span>
          </li>
        </ul>
      </div>

      <!-- Fil d'activité -->
      <div class="card">
        <h2 class="mb-3 font-semibold text-slate-800">Activité en direct</h2>
        <p v-if="evFiltres.length === 0" class="text-sm italic text-slate-400">Aucune activité pour l'instant.</p>
        <ul class="space-y-2">
          <li v-for="e in evFiltres.slice(0, 60)" :key="e.id" class="flex items-start gap-3 text-sm">
            <span class="mt-0.5 w-12 shrink-0 font-mono text-xs text-slate-400">{{ heure(e.creeLe) }}</span>
            <span class="flex-1 text-slate-700">
              <span class="font-medium">{{ e.type === 'quiz' ? 'a fait' : 'a ouvert' }}</span>
              {{ ITEM_LABEL[e.item ?? ''] || e.item }}
              <span v-if="e.label" class="text-slate-500">— {{ e.label }}</span>
              <span v-if="e.note != null" class="font-bold text-brand-dark"> ({{ e.note }}/20)</span>
              <span v-if="e.chapitre" class="text-xs text-slate-400"> · {{ e.matiere }}/{{ e.chapitre }}</span>
            </span>
          </li>
        </ul>
      </div>
    </template>
  </div>
</template>
