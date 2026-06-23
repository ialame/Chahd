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
interface EleveResume {
  id: number
  nom: string
  email: string
  creeLe: string
  nbActivites: number
  derniereActivite: string | null
}
interface EleveSuivi {
  eleve: { id: number; nom: string; email: string; role: string }
  activites: Activite[]
}

const { get, put, del } = useApi()
const { estAdmin, estConnecte } = useAuth()

const eleves = ref<EleveResume[]>([])
const selId = ref<number | null>(null)
const eleve = ref<EleveSuivi['eleve'] | null>(null)
const activites = ref<Activite[]>([])
const dernierRefresh = ref<Date | null>(null)
let timer: ReturnType<typeof setInterval> | null = null

// Édition / suppression d'un élève
const edition = ref(false)
const editNom = ref('')
const editEmail = ref('')
const editErreur = ref('')

function ouvrirEdition() {
  if (!eleve.value) return
  editNom.value = eleve.value.nom
  editEmail.value = eleve.value.email
  editErreur.value = ''
  edition.value = true
}
async function enregistrerEdition() {
  if (!eleve.value) return
  editErreur.value = ''
  try {
    const maj = await put<EleveSuivi['eleve']>(`/admin/eleves/${eleve.value.id}`, {
      nom: editNom.value,
      email: editEmail.value,
    })
    eleve.value = maj
    edition.value = false
    await chargerEleves()
  } catch (e: any) {
    editErreur.value = e?.data?.message || 'Modification impossible.'
  }
}
async function supprimerEleve() {
  if (!eleve.value) return
  if (!confirm(`Supprimer définitivement « ${eleve.value.nom} » et toutes ses activités ?`)) return
  try {
    await del(`/admin/eleves/${eleve.value.id}`)
    eleve.value = null
    selId.value = null
    activites.value = []
    await chargerEleves()
  } catch (e: any) {
    alert(e?.data?.message || 'Suppression impossible.')
  }
}

const { data: lecons } = await useAsyncData('suivi-maths', () => get<LeconDto[]>('/matieres/maths/cours'))
const totalItemsMaths = computed(() =>
  (lecons.value ?? []).reduce(
    (n, l) => n + (l.aContenu ? 1 : 0) + (l.aExercices ? 1 : 0) + (l.aProblemes ? 1 : 0) + (l.aFiches ? 1 : 0) + (l.quizId ? 1 : 0),
    0
  )
)

async function chargerEleves() {
  if (!estAdmin.value) return
  try {
    eleves.value = await get<EleveResume[]>('/admin/eleves')
    dernierRefresh.value = new Date()
    if (selId.value == null && eleves.value.length) selectionner(eleves.value[0].id)
  } catch { /* ignore */ }
}

async function selectionner(id: number) {
  selId.value = id
  try {
    const s = await get<EleveSuivi>(`/admin/eleves/${id}/suivi`)
    eleve.value = s.eleve
    activites.value = s.activites
    dernierRefresh.value = new Date()
  } catch { /* ignore */ }
}

onMounted(() => {
  chargerEleves()
  timer = setInterval(() => {
    if (!estAdmin.value) return
    chargerEleves()
    if (selId.value != null) selectionner(selId.value)
  }, 12000)
})
onUnmounted(() => { if (timer) clearInterval(timer) })

// --- Agrégation sur les activités de l'élève sélectionné ---
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
    if (l.aContenu) items.push({ label: 'Cours', done: faitsSet.value.has(l.slug + '|cours') })
    if (l.aExercices) items.push({ label: 'Exos', done: faitsSet.value.has(l.slug + '|exercices') })
    if (l.aProblemes) items.push({ label: 'Pb', done: faitsSet.value.has(l.slug + '|problemes') })
    if (l.aFiches) items.push({ label: 'Fiches', done: faitsSet.value.has(l.slug + '|fiches') })
    if (l.quizId) {
      const note = noteParChapitre.value[l.slug]
      items.push({ label: 'QCM', done: note != null, note })
    }
    return { slug: l.slug, titre: l.titre, items, fait: items.filter((i) => i.done).length, total: items.length }
  })
)

const ITEM_LABEL: Record<string, string> = {
  cours: 'Cours', exercices: 'Exercices', problemes: 'Problèmes', fiches: 'Fiches',
  quiz: 'QCM', annale: 'Annale', pdf: 'PDF', page: 'Page'
}

function relatif(iso: string | null): string {
  if (!iso) return 'jamais'
  const d = (Date.now() - new Date(iso).getTime()) / 1000
  if (d < 60) return "à l'instant"
  if (d < 3600) return `il y a ${Math.floor(d / 60)} min`
  if (d < 86400) return `il y a ${Math.floor(d / 3600)} h`
  return new Date(iso).toLocaleDateString('fr-FR')
}
function heure(iso: string): string {
  return new Date(iso).toLocaleTimeString('fr-FR', { hour: '2-digit', minute: '2-digit' })
}
</script>

<template>
  <div class="mx-auto max-w-5xl space-y-6">
    <!-- Accès réservé -->
    <div v-if="!estAdmin" class="card mx-auto max-w-md space-y-3 text-center">
      <h1 class="text-xl font-bold text-ink">Suivi des élèves</h1>
      <p class="text-sm text-[#a8998a]">Espace réservé à l'administrateur.</p>
      <NuxtLink v-if="!estConnecte" to="/connexion?redirect=/suivi" class="btn-primary inline-block">
        Se connecter
      </NuxtLink>
      <p v-else class="text-sm text-red-600">Ton compte n'a pas les droits d'accès.</p>
    </div>

    <template v-else>
      <header class="flex items-center justify-between">
        <h1 class="text-2xl font-bold text-ink">Suivi des élèves</h1>
        <p class="text-xs text-[#a8998a]">
          {{ eleves.length }} élève(s) · maj {{ dernierRefresh ? relatif(dernierRefresh.toISOString()) : '…' }} · auto 12 s
        </p>
      </header>

      <div class="grid gap-6 lg:grid-cols-12">
        <!-- Liste des élèves -->
        <aside class="lg:col-span-4">
          <div class="card space-y-1">
            <p v-if="eleves.length === 0" class="text-sm italic text-[#a8998a]">Aucun élève inscrit.</p>
            <button
              v-for="el in eleves"
              :key="el.id"
              class="w-full rounded-lg px-3 py-2 text-left transition"
              :class="el.id === selId ? 'bg-brand-light' : 'hover:bg-paper'"
              @click="selectionner(el.id)"
            >
              <div class="flex items-center justify-between">
                <span class="font-semibold text-ink">{{ el.nom }}</span>
                <span class="text-[11px] text-[#a8998a]">{{ el.nbActivites }} act.</span>
              </div>
              <div class="truncate text-xs text-[#a8998a]">{{ el.email }}</div>
              <div class="text-[11px] text-[#a8998a]">Vu {{ relatif(el.derniereActivite) }}</div>
            </button>
          </div>
        </aside>

        <!-- Détail de l'élève sélectionné -->
        <section class="space-y-6 lg:col-span-8">
          <div v-if="!eleve" class="card text-center text-sm text-[#a8998a]">
            Sélectionne un élève à gauche.
          </div>

          <template v-else>
            <div class="card space-y-2">
              <div class="flex items-center justify-between gap-3">
                <div class="min-w-0">
                  <span class="font-semibold text-ink">{{ eleve.nom }}</span>
                  <span class="ml-2 text-xs text-[#a8998a]">{{ eleve.email }}</span>
                </div>
                <div class="flex shrink-0 items-center gap-2">
                  <button
                    class="rounded-lg px-2 py-1 text-xs font-medium text-[#6b5f57] hover:bg-rule hover:text-ink"
                    title="Renommer" @click="ouvrirEdition"
                  >
                    <i class="fa-solid fa-pen" /> Renommer
                  </button>
                  <button
                    class="rounded-lg px-2 py-1 text-xs font-medium text-red-500 hover:bg-red-50"
                    title="Supprimer" @click="supprimerEleve"
                  >
                    <i class="fa-solid fa-trash" /> Supprimer
                  </button>
                  <span class="font-serif text-2xl font-extrabold text-brand">{{ taux }}%</span>
                </div>
              </div>

              <!-- Formulaire d'édition -->
              <div v-if="edition" class="space-y-2 rounded-lg border border-rule bg-paper p-3">
                <div class="grid gap-2 sm:grid-cols-2">
                  <input
                    v-model="editNom" placeholder="Nom"
                    class="rounded-lg border border-rule px-3 py-1.5 text-sm focus:border-brand focus:outline-none"
                  >
                  <input
                    v-model="editEmail" type="email" placeholder="Email"
                    class="rounded-lg border border-rule px-3 py-1.5 text-sm focus:border-brand focus:outline-none"
                  >
                </div>
                <p v-if="editErreur" class="text-xs text-red-600">{{ editErreur }}</p>
                <div class="flex gap-2">
                  <button class="rounded-lg bg-brand px-3 py-1.5 text-sm font-semibold text-white hover:bg-brand-dark" @click="enregistrerEdition">
                    Enregistrer
                  </button>
                  <button class="rounded-lg px-3 py-1.5 text-sm font-medium text-[#6b5f57] hover:bg-rule" @click="edition = false">
                    Annuler
                  </button>
                </div>
              </div>
              <div class="h-2 overflow-hidden rounded-full bg-rule">
                <div class="h-full bg-brand transition-all" :style="{ width: taux + '%' }" />
              </div>
              <p class="text-xs text-[#a8998a]">
                {{ itemsConsultes + quizDone }} / {{ totalItemsMaths }} éléments abordés
                ({{ itemsConsultes }} consultés · {{ quizDone }} QCM faits)
              </p>
            </div>

            <div class="card">
              <h2 class="mb-3 font-semibold text-ink">Détail par chapitre — Maths</h2>
              <ul class="space-y-3">
                <li v-for="c in chapitres" :key="c.slug">
                  <div class="mb-1 flex items-center justify-between">
                    <span class="text-sm font-medium text-[#6b5f57]">{{ c.titre }}</span>
                    <span class="font-mono text-xs" :class="c.fait === c.total ? 'text-theo' : 'text-[#a8998a]'">{{ c.fait }}/{{ c.total }}</span>
                  </div>
                  <div class="flex flex-wrap gap-1.5">
                    <span
                      v-for="(it, i) in c.items"
                      :key="i"
                      class="inline-flex items-center gap-1 rounded-full border px-2 py-0.5 text-[11px] font-medium"
                      :class="it.done ? 'border-theo/30 bg-theo/10 text-theo' : 'border-rule bg-paper text-[#a8998a]'"
                    >
                      {{ it.label }}
                      <template v-if="it.note != null"> · {{ it.note }}/20</template>
                      <i v-else-if="it.done" class="fa-solid fa-check text-[9px]" />
                    </span>
                  </div>
                </li>
              </ul>
            </div>

            <div v-if="quizScores.length" class="card">
              <h2 class="mb-2 font-semibold text-ink">Scores aux QCM</h2>
              <ul class="space-y-1 text-sm">
                <li v-for="(q, i) in quizScores.slice(0, 12)" :key="i" class="flex items-center justify-between">
                  <span class="truncate text-[#6b5f57]">{{ q.label }}</span>
                  <span class="ml-3 shrink-0 font-bold" :class="(q.note ?? 0) >= 10 ? 'text-theo' : 'text-red-600'">
                    {{ q.note }}/20 <span class="font-normal text-[#a8998a]">· {{ relatif(q.creeLe) }}</span>
                  </span>
                </li>
              </ul>
            </div>

            <div class="card">
              <h2 class="mb-3 font-semibold text-ink">Activité</h2>
              <p v-if="activites.length === 0" class="text-sm italic text-[#a8998a]">Aucune activité pour l'instant.</p>
              <ul class="space-y-2">
                <li v-for="e in activites.slice(0, 60)" :key="e.id" class="flex items-start gap-3 text-sm">
                  <span class="mt-0.5 w-12 shrink-0 font-mono text-xs text-[#a8998a]">{{ heure(e.creeLe) }}</span>
                  <span class="flex-1 text-[#6b5f57]">
                    <span class="font-medium">{{ e.type === 'quiz' ? 'a fait' : 'a ouvert' }}</span>
                    {{ ITEM_LABEL[e.item ?? ''] || e.item }}
                    <span v-if="e.label" class="text-[#6b5f57]">— {{ e.label }}</span>
                    <span v-if="e.note != null" class="font-bold text-brand"> ({{ e.note }}/20)</span>
                    <span v-if="e.chapitre" class="text-xs text-[#a8998a]"> · {{ e.matiere }}/{{ e.chapitre }}</span>
                  </span>
                </li>
              </ul>
            </div>
          </template>
        </section>
      </div>
    </template>
  </div>
</template>
