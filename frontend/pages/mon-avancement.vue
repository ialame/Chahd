<script setup lang="ts">
import type { LeconDto } from '~/types/api'

interface Activite {
  id: number
  type: string
  matiere: string | null
  chapitre: string | null
  item: string | null
  label: string | null
  note: number | null
  creeLe: string
}
interface MonSuivi {
  eleve: { id: number; nom: string; email: string; role: string }
  activites: Activite[]
}

const { get } = useApi()
const { user, estConnecte } = useAuth()

const activites = ref<Activite[]>([])

const { data: lecons } = await useAsyncData('mon-av-maths', () => get<LeconDto[]>('/matieres/maths/cours'))
await useAsyncData('mon-av-suivi', async () => {
  if (estConnecte.value) {
    try {
      activites.value = (await get<MonSuivi>('/me/suivi')).activites
    } catch { /* ignore */ }
  }
  return true
})
async function rafraichir() {
  if (!estConnecte.value) return
  try {
    activites.value = (await get<MonSuivi>('/me/suivi')).activites
  } catch { /* ignore */ }
}
onMounted(rafraichir)

const totalItemsMaths = computed(() =>
  (lecons.value ?? []).reduce(
    (n, l) => n + (l.aContenu ? 1 : 0) + (l.aExercices ? 1 : 0) + (l.aProblemes ? 1 : 0) + (l.aFiches ? 1 : 0) + (l.quizId ? 1 : 0),
    0
  )
)
const itemsConsultes = computed(() => {
  const s = new Set<string>()
  for (const e of activites.value)
    if (e.matiere === 'maths' && e.chapitre && e.item && ['cours', 'exercices', 'problemes', 'fiches'].includes(e.item))
      s.add(e.chapitre + '|' + e.item)
  return s.size
})
const quizDone = computed(() =>
  new Set(activites.value.filter((e) => e.matiere === 'maths' && e.type === 'quiz' && e.note != null).map((e) => e.label)).size
)
const taux = computed(() =>
  totalItemsMaths.value ? Math.round(((itemsConsultes.value + quizDone.value) / totalItemsMaths.value) * 100) : 0
)
const quizScores = computed(() => activites.value.filter((e) => e.type === 'quiz' && e.note != null))
const moyenneQcm = computed(() => {
  const notes = quizScores.value.map((q) => q.note ?? 0)
  return notes.length ? Math.round((notes.reduce((a, b) => a + b, 0) / notes.length) * 10) / 10 : null
})

const faitsSet = computed(() => {
  const s = new Set<string>()
  for (const e of activites.value) if (e.matiere === 'maths' && e.chapitre && e.item) s.add(e.chapitre + '|' + e.item)
  return s
})
const noteParChapitre = computed(() => {
  const m: Record<string, number> = {}
  for (const e of activites.value)
    if (e.matiere === 'maths' && e.type === 'quiz' && e.chapitre && e.note != null)
      m[e.chapitre] = Math.max(m[e.chapitre] ?? 0, e.note)
  return m
})
const chapitres = computed(() =>
  (lecons.value ?? []).map((l) => {
    const items: { label: string; done: boolean; note?: number }[] = []
    if (l.aContenu) items.push({ label: '📘 Cours', done: faitsSet.value.has(l.slug + '|cours') })
    if (l.aExercices) items.push({ label: '✅ Exos', done: faitsSet.value.has(l.slug + '|exercices') })
    if (l.aProblemes) items.push({ label: '🧩 Pb', done: faitsSet.value.has(l.slug + '|problemes') })
    if (l.aFiches) items.push({ label: '🗂 Fiches', done: faitsSet.value.has(l.slug + '|fiches') })
    if (l.quizId) {
      const note = noteParChapitre.value[l.slug]
      items.push({ label: '📋 QCM', done: note != null, note })
    }
    return { slug: l.slug, titre: l.titre, items, fait: items.filter((i) => i.done).length, total: items.length }
  })
)
// Prochaine étape suggérée : 1er chapitre non terminé.
const prochain = computed(() => chapitres.value.find((c) => c.fait < c.total) ?? null)

function heure(iso: string): string {
  return new Date(iso).toLocaleDateString('fr-FR', { day: '2-digit', month: 'short', hour: '2-digit', minute: '2-digit' })
}
const ITEM_LABEL: Record<string, string> = {
  cours: '📘 Cours', exercices: '✅ Exercices', problemes: '🧩 Problèmes', fiches: '🗂 Fiches',
  quiz: '📋 QCM', annale: '📄 Annale', pdf: '📄 PDF', page: '🔖 Page'
}
</script>

<template>
  <div class="mx-auto max-w-3xl space-y-6">
    <!-- Non connecté -->
    <div v-if="!estConnecte" class="card mx-auto max-w-md space-y-3 text-center">
      <h1 class="text-xl font-bold text-slate-900">📈 Mon avancement</h1>
      <p class="text-sm text-slate-500">Connecte-toi pour suivre ta progression.</p>
      <NuxtLink to="/connexion?redirect=/mon-avancement" class="btn-primary inline-block">Se connecter</NuxtLink>
      <p class="text-sm text-slate-500">
        Pas de compte ?
        <NuxtLink to="/inscription" class="font-semibold text-brand hover:underline">S'inscrire</NuxtLink>
      </p>
    </div>

    <template v-else>
      <header>
        <h1 class="text-2xl font-bold text-slate-900">Bonjour {{ user?.nom }} 👋</h1>
        <p class="text-sm text-slate-500">Voici ta progression en mathématiques.</p>
      </header>

      <!-- Avancement global -->
      <div class="card space-y-2">
        <div class="flex items-center justify-between">
          <span class="font-semibold text-slate-800">Avancement — Maths</span>
          <span class="text-3xl font-extrabold text-brand-dark">{{ taux }}%</span>
        </div>
        <div class="h-3 overflow-hidden rounded-full bg-slate-100">
          <div class="h-full bg-brand transition-all" :style="{ width: taux + '%' }" />
        </div>
        <div class="flex flex-wrap gap-4 pt-1 text-xs text-slate-500">
          <span>{{ itemsConsultes + quizDone }} / {{ totalItemsMaths }} éléments abordés</span>
          <span v-if="moyenneQcm != null">Moyenne QCM : <b class="text-slate-700">{{ moyenneQcm }}/20</b></span>
        </div>
      </div>

      <!-- Prochaine étape -->
      <NuxtLink
        v-if="prochain"
        to="/matieres/maths"
        class="card flex items-center justify-between transition hover:shadow-md"
      >
        <div>
          <p class="text-xs font-semibold uppercase tracking-wide text-brand">Continue ici</p>
          <p class="font-semibold text-slate-800">{{ prochain.titre }}</p>
          <p class="text-xs text-slate-400">{{ prochain.fait }}/{{ prochain.total }} éléments faits</p>
        </div>
        <i class="fa-solid fa-arrow-right text-brand" />
      </NuxtLink>
      <div v-else class="card text-center text-emerald-700">
        🎉 Bravo, tu as parcouru tout le programme de maths !
      </div>

      <!-- Détail par chapitre -->
      <div class="card">
        <h2 class="mb-3 font-semibold text-slate-800">Chapitre par chapitre</h2>
        <ul class="space-y-3">
          <li v-for="c in chapitres" :key="c.slug">
            <div class="mb-1 flex items-center justify-between">
              <span class="text-sm font-medium text-slate-700">{{ c.titre }}</span>
              <span class="font-mono text-xs" :class="c.fait === c.total ? 'text-emerald-600' : 'text-slate-400'">{{ c.fait }}/{{ c.total }}</span>
            </div>
            <div class="flex flex-wrap gap-1.5">
              <span
                v-for="(it, i) in c.items"
                :key="i"
                class="inline-flex items-center gap-1 rounded-full border px-2 py-0.5 text-[11px] font-medium"
                :class="it.done ? 'border-emerald-200 bg-emerald-50 text-emerald-700' : 'border-slate-200 bg-slate-50 text-slate-400'"
              >
                {{ it.label }}
                <template v-if="it.note != null"> · {{ it.note }}/20</template>
                <i v-else-if="it.done" class="fa-solid fa-check text-[9px]" />
              </span>
            </div>
          </li>
        </ul>
      </div>

      <!-- Scores QCM -->
      <div v-if="quizScores.length" class="card">
        <h2 class="mb-2 font-semibold text-slate-800">Mes scores aux QCM</h2>
        <ul class="space-y-1 text-sm">
          <li v-for="(q, i) in quizScores.slice(0, 12)" :key="i" class="flex items-center justify-between">
            <span class="truncate text-slate-700">{{ q.label }}</span>
            <span class="ml-3 shrink-0 font-bold" :class="(q.note ?? 0) >= 10 ? 'text-green-600' : 'text-red-600'">
              {{ q.note }}/20 <span class="font-normal text-slate-400">· {{ heure(q.creeLe) }}</span>
            </span>
          </li>
        </ul>
      </div>

      <div v-if="activites.length === 0" class="card text-center text-sm text-slate-400">
        Tu n'as pas encore d'activité. Ouvre un cours ou fais un QCM pour démarrer !
      </div>
    </template>
  </div>
</template>
