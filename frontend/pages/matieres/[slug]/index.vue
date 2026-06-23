<script setup lang="ts">
import type { MatiereDetailDto, LeconDto, AnnaleContenuDto, FlashcardDto, ExoBacDto } from '~/types/api'
import { parseMarkdown } from '~/utils/parseMarkdown'

const route = useRoute()
const slug = route.params.slug as string
const { get } = useApi()
const { track } = useActivite()
const apiBase = useRuntimeConfig().public.apiBase as string
const pdfUrl = (id: number) => `${apiBase}/annales/${id}/sujet.pdf`
const pageUrl = (id: number, n: number) => `${apiBase}/annales/${id}/page/${n}.png`
const corrigeUrl = (id: number) => `${apiBase}/annales/${id}/corrige.pdf`
const corrigePageUrl = (id: number, n: number) => `${apiBase}/annales/${id}/corrige/${n}.png`

const { data: matiere, error } = await useAsyncData(
  `matiere-${slug}`,
  () => get<MatiereDetailDto>(`/matieres/${slug}`)
)
const { data: lecons } = await useAsyncData(
  `cours-${slug}`,
  () => get<LeconDto[]>(`/matieres/${slug}/cours`)
)

// Annales groupées par année (décroissant).
const annalesParAnnee = computed(() => {
  const m = new Map<number, AnnaleDtoLite[]>()
  for (const a of matiere.value?.annales ?? []) {
    if (!m.has(a.annee)) m.set(a.annee, [])
    m.get(a.annee)!.push(a)
  }
  return [...m.entries()]
    .sort((a, b) => b[0] - a[0])
    .map(([annee, items]) => ({ annee, items: items.sort((x, y) => x.session.localeCompare(y.session)) }))
})
type AnnaleDtoLite = { id: number; titre: string; annee: number; session: string; aContenu: boolean; aPdf: boolean; pdfPages: number; aCorrigePdf: boolean; corrigePdfPages: number }

// --- État de l'explorateur ---
const groupes = reactive({ chapitres: true, annales: false })
const leconOuverte = reactive<Record<number, boolean>>({})
const anneeOuverte = reactive<Record<number, boolean>>({})

// --- Sélection + contenu ---
type Sel =
  | { kind: 'cours' | 'exercices' | 'problemes' | 'fiches' | 'bac'; lecon: LeconDto }
  | { kind: 'annale'; annale: AnnaleDtoLite }
  | { kind: 'pdf'; annale: AnnaleDtoLite }
  | { kind: 'corrige-pdf'; annale: AnnaleDtoLite }
  | { kind: 'quiz'; quizId: number; titre: string; chapitre?: string }
const selection = ref<Sel | null>(null)
const loading = ref(false)
const cache = reactive<Record<string, string>>({})
const fiches = ref<FlashcardDto[]>([])
const bacExos = ref<ExoBacDto[]>([])
const annale = ref<AnnaleContenuDto | null>(null)

const cleSel = (s: Sel) => {
  if (s.kind === 'annale') return `annale-${s.annale.id}`
  if (s.kind === 'pdf') return `pdf-${s.annale.id}`
  if (s.kind === 'corrige-pdf') return `corrige-pdf-${s.annale.id}`
  if (s.kind === 'quiz') return `quiz-${s.quizId}`
  return `${s.kind}-${s.lecon.id}`
}
const estSelectionne = (s: Sel) => selection.value != null && cleSel(selection.value) === cleSel(s)

// Leçon courante (pour les actions « marquer comme lu / à revoir »), si la sélection en porte une.
const leconSel = computed(() => {
  const s = selection.value
  return s && 'lecon' in s ? s.lecon : null
})

// Bouton principal d'une annale : ouvre la transcription si elle existe,
// sinon le sujet PDF (cas des annales sans transcription, ex. Physique-Chimie).
function ouvrirAnnale(a: AnnaleDtoLite) {
  if (a.aContenu) selectionner({ kind: 'annale', annale: a })
  else if (a.aPdf) selectionner({ kind: 'pdf', annale: a })
}
const annaleSelActive = (a: AnnaleDtoLite) =>
  a.aContenu ? estSelectionne({ kind: 'annale', annale: a }) : estSelectionne({ kind: 'pdf', annale: a })

// Libellé court d'un QCM : « QCM · notions » si le titre a un « : », sinon « QCM ».
const qcmLabel = (titre: string) => {
  const i = titre.indexOf(':')
  return i >= 0 ? `QCM · ${titre.slice(i + 1).trim()}` : 'QCM'
}

async function selectionner(s: Sel) {
  selection.value = s
  // Suivi : enregistrer l'ouverture
  if (s.kind === 'annale') track({ matiere: slug, item: 'annale', label: s.annale.titre })
  else if (s.kind === 'pdf') track({ matiere: slug, item: 'pdf', label: s.annale.titre })
  else if (s.kind === 'corrige-pdf') track({ matiere: slug, item: 'pdf', label: `${s.annale.titre} (corrigé)` })
  else if (s.kind === 'quiz') track({ matiere: slug, chapitre: s.chapitre, item: 'quiz', label: s.titre })
  else track({ matiere: slug, chapitre: s.lecon.slug, item: s.kind, label: s.lecon.titre })
  if (s.kind === 'quiz' || s.kind === 'pdf' || s.kind === 'corrige-pdf') return // affichage direct, pas de fetch
  loading.value = true
  try {
    if (s.kind === 'annale') {
      annale.value = await get<AnnaleContenuDto>(`/annales/${s.annale.id}/contenu`)
    } else if (s.kind === 'fiches') {
      fiches.value = await get<FlashcardDto[]>(`/cours/${s.lecon.id}/fiches`)
    } else if (s.kind === 'bac') {
      bacExos.value = await get<ExoBacDto[]>(`/cours/${s.lecon.id}/bac`)
    } else {
      const k = cleSel(s)
      if (!cache[k]) {
        const path = s.kind === 'cours' ? 'contenu' : s.kind
        const dto = await get<{ contenu: string }>(`/cours/${s.lecon.id}/${path}`)
        cache[k] = dto.contenu
      }
    }
  } finally {
    loading.value = false
  }
}

const titreSelection = computed(() => {
  const s = selection.value
  if (!s) return ''
  if (s.kind === 'annale') return s.annale.titre
  if (s.kind === 'pdf') return `${s.annale.titre} — Sujet original (PDF)`
  if (s.kind === 'corrige-pdf') return `${s.annale.titre} — Corrigé (PDF)`
  if (s.kind === 'quiz') return s.titre
  const suffixe = { cours: 'Cours', exercices: 'Exercices résolus', problemes: 'Problèmes résolus', fiches: 'Fiches de révision', bac: 'Exercices du bac' }[s.kind]
  return `${s.lecon.titre} — ${suffixe}`
})
const renduTexte = computed(() => {
  const s = selection.value
  if (!s || s.kind === 'annale' || s.kind === 'fiches') return ''
  return cache[cleSel(s)] ? parseMarkdown(cache[cleSel(s)]) : ''
})
const sessionLabel = (s: string) => (s === 'RATTRAPAGE' ? 'Rattrapage' : 'Normale')
const itemClass = (on: boolean) =>
  'w-full flex items-center gap-2 px-3 py-1.5 rounded-lg text-left text-[13px] transition ' +
  (on ? 'bg-brand/10 text-brand-dark font-semibold' : 'text-slate-600 hover:bg-slate-100')
</script>

<template>
  <div v-if="error" class="card text-center text-slate-500">
    Matière introuvable. <NuxtLink to="/matieres" class="text-brand-dark underline">Retour</NuxtLink>
  </div>

  <div v-else-if="matiere" class="space-y-4">
    <!-- En-tête -->
    <header class="flex items-center justify-between gap-3">
      <div>
        <nav class="text-sm text-slate-500">
          <NuxtLink to="/matieres" class="hover:underline">Matières</NuxtLink>
          <span class="mx-1">/</span>
          <span class="text-slate-700">{{ matiere.nom }}</span>
        </nav>
        <h1 class="text-2xl font-bold text-slate-900">{{ matiere.nom }}</h1>
      </div>
    </header>

    <!-- 2 colonnes -->
    <div class="grid grid-cols-1 lg:grid-cols-12 gap-4 items-start">
      <!-- Colonne 1 : explorateur -->
      <aside class="lg:col-span-4 lg:sticky lg:top-20">
        <div class="rounded-xl bg-white ring-1 ring-slate-200 overflow-hidden max-h-[80vh] overflow-y-auto">
          <!-- Groupe Chapitres -->
          <button
            class="w-full flex items-center gap-2 px-4 py-3 text-left text-xs font-bold uppercase tracking-wide text-slate-500 hover:bg-slate-50"
            @click="groupes.chapitres = !groupes.chapitres"
          >
            <i :class="['fa-solid text-[10px]', groupes.chapitres ? 'fa-chevron-down' : 'fa-chevron-right']" />
            <i class="fa-solid fa-book-open text-brand-dark" /> Chapitres
          </button>
          <div v-show="groupes.chapitres" class="px-2 pb-2 space-y-1">
            <div v-for="l in lecons ?? []" :key="l.id" class="rounded-lg">
              <button
                class="w-full flex items-center gap-2 px-3 py-2 text-left text-[13px] font-semibold text-slate-700 hover:bg-slate-50 rounded-lg"
                @click="leconOuverte[l.id] = !leconOuverte[l.id]"
              >
                <i :class="['fa-solid text-[10px] shrink-0', leconOuverte[l.id] ? 'fa-chevron-down text-brand' : 'fa-chevron-right text-slate-400']" />
                <span class="truncate">{{ l.titre }}</span>
              </button>
              <div v-show="leconOuverte[l.id]" class="pl-4 pr-1 pb-1 space-y-0.5">
                <button v-if="l.aContenu" :class="itemClass(estSelectionne({ kind: 'cours', lecon: l }))" @click="selectionner({ kind: 'cours', lecon: l })">
                  <i class="fa-solid fa-graduation-cap text-purple-500 w-4 text-center" /> Le cours
                </button>
                <button v-if="l.aExercices" :class="itemClass(estSelectionne({ kind: 'exercices', lecon: l }))" @click="selectionner({ kind: 'exercices', lecon: l })">
                  <i class="fa-solid fa-check-double text-emerald-500 w-4 text-center" /> Exercices résolus
                </button>
                <button v-if="l.aProblemes" :class="itemClass(estSelectionne({ kind: 'problemes', lecon: l }))" @click="selectionner({ kind: 'problemes', lecon: l })">
                  <i class="fa-solid fa-puzzle-piece text-indigo-500 w-4 text-center" /> Problèmes résolus
                </button>
                <button v-if="l.aFiches" :class="itemClass(estSelectionne({ kind: 'fiches', lecon: l }))" @click="selectionner({ kind: 'fiches', lecon: l })">
                  <i class="fa-solid fa-clone text-rose-500 w-4 text-center" /> Fiches de révision
                </button>
                <button
                  v-for="q in l.quizzes"
                  :key="q.id"
                  :class="itemClass(estSelectionne({ kind: 'quiz', quizId: q.id, titre: qcmLabel(q.titre), chapitre: l.slug }))"
                  @click="selectionner({ kind: 'quiz', quizId: q.id, titre: qcmLabel(q.titre), chapitre: l.slug })"
                >
                  <i class="fa-solid fa-list-check text-teal-500 w-4 text-center" /> {{ qcmLabel(q.titre) }}
                </button>
                <button v-if="l.aBac" :class="itemClass(estSelectionne({ kind: 'bac', lecon: l }))" @click="selectionner({ kind: 'bac', lecon: l })">
                  <i class="fa-solid fa-graduation-cap text-amber-600 w-4 text-center" /> Exercices du bac
                </button>
              </div>
            </div>
          </div>

          <!-- Groupe Annales -->
          <button
            class="w-full flex items-center gap-2 px-4 py-3 text-left text-xs font-bold uppercase tracking-wide text-slate-500 border-t border-slate-100 hover:bg-slate-50"
            @click="groupes.annales = !groupes.annales"
          >
            <i :class="['fa-solid text-[10px]', groupes.annales ? 'fa-chevron-down' : 'fa-chevron-right']" />
            <i class="fa-solid fa-file-lines text-brand-dark" /> Annales
          </button>
          <div v-show="groupes.annales" class="px-2 pb-2 space-y-1">
            <div v-for="grp in annalesParAnnee" :key="grp.annee" class="rounded-lg">
              <button
                class="w-full flex items-center gap-2 px-3 py-2 text-left text-[13px] font-semibold text-slate-700 hover:bg-slate-50 rounded-lg"
                @click="anneeOuverte[grp.annee] = !anneeOuverte[grp.annee]"
              >
                <i :class="['fa-solid text-[10px] shrink-0', anneeOuverte[grp.annee] ? 'fa-chevron-down text-brand' : 'fa-chevron-right text-slate-400']" />
                <span>{{ grp.annee }}</span>
              </button>
              <div v-show="anneeOuverte[grp.annee]" class="pl-4 pr-1 pb-1 space-y-0.5">
                <div v-for="a in grp.items" :key="a.id" class="flex items-center gap-1">
                  <button
                    :disabled="!a.aContenu && !a.aPdf"
                    :class="[itemClass(annaleSelActive(a)), 'flex-1', (a.aContenu || a.aPdf) ? '' : 'opacity-40 cursor-not-allowed']"
                    @click="ouvrirAnnale(a)"
                  >
                    <i class="fa-solid fa-file-pen text-amber-500 w-4 text-center" />
                    Session {{ sessionLabel(a.session) }}
                  </button>
                  <button
                    v-if="a.aPdf && a.aContenu"
                    :class="itemClass(estSelectionne({ kind: 'pdf', annale: a }))"
                    class="shrink-0 !px-2 !w-auto"
                    title="Voir le sujet original (PDF)"
                    @click="selectionner({ kind: 'pdf', annale: a })"
                  >
                    <i class="fa-solid fa-file-pdf text-red-500" /> PDF
                  </button>
                  <button
                    v-if="a.aCorrigePdf"
                    :class="itemClass(estSelectionne({ kind: 'corrige-pdf', annale: a }))"
                    class="shrink-0 !px-2 !w-auto"
                    title="Voir le corrigé (PDF)"
                    @click="selectionner({ kind: 'corrige-pdf', annale: a })"
                  >
                    <i class="fa-solid fa-circle-check text-emerald-500" /> Corrigé
                  </button>
                </div>
              </div>
            </div>
          </div>

        </div>
      </aside>

      <!-- Colonne 2 : contenu -->
      <section class="lg:col-span-8 min-w-0">
        <!-- Vide -->
        <div v-if="!selection" class="card flex flex-col items-center justify-center text-center min-h-[60vh] text-slate-500">
          <i class="fa-solid fa-hand-pointer text-3xl text-slate-300 mb-3" />
          <p class="font-semibold text-slate-700">Choisissez un élément à gauche</p>
          <p class="text-sm">Cours, exercices, problèmes, fiches ou annales — le contenu s'affiche ici.</p>
        </div>

        <!-- QCM interactif dans la colonne de droite -->
        <div v-else-if="selection.kind === 'quiz'" class="card">
          <QuizRunner :key="selection.quizId" :quiz-id="selection.quizId" :matiere-slug="slug" :chapitre="selection.chapitre" />
        </div>

        <!-- Sujet original (PDF) -->
        <div v-else-if="selection.kind === 'pdf'" class="card space-y-3">
          <div class="flex flex-wrap items-center justify-between gap-2">
            <h2 class="text-xl font-bold text-slate-900">{{ titreSelection }}</h2>
            <a
              :href="pdfUrl(selection.annale.id)" target="_blank" rel="noopener"
              class="inline-flex items-center gap-2 rounded-lg bg-brand px-3 py-1.5 text-sm font-semibold text-white hover:bg-brand-dark"
            >
              <i class="fa-solid fa-up-right-from-square" /> Ouvrir / Imprimer
            </a>
          </div>
          <div class="max-h-[80vh] space-y-3 overflow-auto rounded-lg bg-slate-100 p-2">
            <img
              v-for="n in selection.annale.pdfPages" :key="n"
              :src="pageUrl(selection.annale.id, n)" :alt="`Page ${n}`" loading="lazy"
              class="w-full rounded border border-slate-200 bg-white shadow-sm"
            >
          </div>
          <p class="text-xs text-slate-400">
            Astuce : cliquez sur « Ouvrir / Imprimer » pour le plein écran et l'impression.
          </p>
        </div>

        <!-- Corrigé original (PDF) -->
        <div v-else-if="selection.kind === 'corrige-pdf'" class="card space-y-3">
          <div class="flex flex-wrap items-center justify-between gap-2">
            <h2 class="text-xl font-bold text-slate-900">{{ titreSelection }}</h2>
            <a
              :href="corrigeUrl(selection.annale.id)" target="_blank" rel="noopener"
              class="inline-flex items-center gap-2 rounded-lg bg-brand px-3 py-1.5 text-sm font-semibold text-white hover:bg-brand-dark"
            >
              <i class="fa-solid fa-up-right-from-square" /> Ouvrir / Imprimer
            </a>
          </div>
          <div class="max-h-[80vh] space-y-3 overflow-auto rounded-lg bg-slate-100 p-2">
            <img
              v-for="n in selection.annale.corrigePdfPages" :key="n"
              :src="corrigePageUrl(selection.annale.id, n)" :alt="`Page ${n}`" loading="lazy"
              class="w-full rounded border border-slate-200 bg-white shadow-sm"
            >
          </div>
          <p class="text-xs text-slate-400">
            Astuce : cliquez sur « Ouvrir / Imprimer » pour le plein écran et l'impression.
          </p>
        </div>

        <article v-else class="card space-y-4">
          <h2 class="text-xl font-bold text-slate-900">{{ titreSelection }}</h2>

          <LeconActions
            v-if="leconSel"
            :key="leconSel.id"
            :lecon-id="leconSel.id"
            :has-fiches="leconSel.aFiches"
          />

          <p v-if="loading" class="text-center text-sm text-slate-400 py-10">Chargement…</p>

          <!-- Annale : énoncé puis corrigé repliable, exercice par exercice -->
          <template v-else-if="selection.kind === 'annale' && annale">
            <AnnaleReader :key="annale.id" :sujet="annale.sujet" :corrige="annale.corrige" />
          </template>

          <!-- Fiches de révision (flashcards) -->
          <template v-else-if="selection.kind === 'fiches'">
            <FlashcardViewer :key="selection.lecon.id" :cards="fiches" />
          </template>

          <!-- Exercices du bac -->
          <template v-else-if="selection.kind === 'bac'">
            <BacExercices :key="selection.lecon.id" :exos="bacExos" />
          </template>

          <!-- Cours / Exercices / Problèmes -->
          <div v-else class="leading-relaxed text-slate-700" v-html="renduTexte" />
        </article>
      </section>
    </div>
  </div>
</template>
