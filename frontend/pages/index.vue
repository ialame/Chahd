<script setup lang="ts">
import type { MatiereDto } from '~/types/api'

const { estConnecte, user } = useAuth()
const { get } = useApi()

// Les matières ne sont chargées que pour un utilisateur connecté (API privée).
const { data: matieres } = await useAsyncData(
  'matieres-accueil',
  () => (estConnecte.value ? get<MatiereDto[]>('/matieres') : Promise.resolve([] as MatiereDto[]))
)

const { nbQuizFaits, moyenneGenerale } = useProgression()

// Sommaire numéroté (chiffres romains à la place des emoji).
const atouts = [
  { titre: '42 annales corrigées', texte: 'Sessions 2019–2025 (Maths, PC, SVT) : énoncés et corrigés transcrits, figures, plus les PDF originaux imprimables.' },
  { titre: "Quiz d'entraînement", texte: 'QCM « notions » et « applications » par chapitre, avec corrigés expliqués et note sur 20.' },
  { titre: 'Cours & fiches', texte: 'Cours illustrés (schémas) et fiches de révision concises, chapitre par chapitre.' },
  { titre: 'Suivi & planning', texte: 'Suis ta progression aux quiz et organise tes révisions jusqu’au jour J.' }
]
const romains = ['I', 'II', 'III', 'IV']

const matieresVitrine = [
  { nom: 'Mathématiques', mono: '∑' },
  { nom: 'Physique-Chimie', mono: 'PC' },
  { nom: 'SVT', mono: 'SVT' }
]
</script>

<template>
  <!-- ============ Visiteur connecté : tableau de bord ============ -->
  <div v-if="estConnecte" class="space-y-10">
    <section class="border-b border-rule pb-10">
      <div class="mb-3 flex items-baseline gap-3">
        <span class="font-serif text-sm font-semibold tracking-wide text-brand">Tableau de bord</span>
        <span class="h-px max-w-[120px] flex-1 bg-rule" />
      </div>
      <h1 class="font-serif text-3xl font-semibold text-ink sm:text-4xl">Bon retour{{ user?.nom ? ', ' + user.nom : '' }}</h1>
      <p class="mt-3 max-w-2xl text-[#6b5f57]">Reprends tes révisions là où tu t’es arrêté.</p>
      <div class="mt-6 flex flex-wrap gap-3">
        <NuxtLink to="/matieres" class="btn-primary">Continuer à réviser</NuxtLink>
        <NuxtLink to="/mon-avancement" class="btn-ghost">Mon avancement</NuxtLink>
      </div>
    </section>

    <section class="grid gap-4 sm:grid-cols-3">
      <div class="card text-center">
        <p class="font-serif text-3xl font-semibold text-brand">{{ matieres?.length ?? 0 }}</p>
        <p class="text-sm text-[#a8998a]">Matières disponibles</p>
      </div>
      <div class="card text-center">
        <p class="font-serif text-3xl font-semibold text-brand">{{ nbQuizFaits }}</p>
        <p class="text-sm text-[#a8998a]">Quiz réalisés</p>
      </div>
      <div class="card text-center">
        <p class="font-serif text-3xl font-semibold text-brand">{{ moyenneGenerale !== null ? moyenneGenerale + '/20' : '—' }}</p>
        <p class="text-sm text-[#a8998a]">Moyenne aux QCM</p>
      </div>
    </section>

    <section>
      <div class="mb-4 flex items-center justify-between">
        <h2 class="text-xl font-bold text-ink">Tes matières</h2>
        <NuxtLink to="/matieres" class="text-sm font-medium text-brand hover:underline">Tout voir →</NuxtLink>
      </div>
      <div class="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
        <MatiereCard v-for="m in matieres" :key="m.id" :matiere="m" />
      </div>
    </section>
  </div>

  <!-- ============ Visiteur non connecté : page d'accueil publique ============ -->
  <div v-else class="space-y-12">
    <!-- Hero -->
    <section class="border-b border-rule pb-12">
      <div class="mb-3 flex items-baseline gap-3">
        <span class="font-serif text-sm font-semibold tracking-wide text-brand">Édition 2025</span>
        <span class="h-px max-w-[120px] flex-1 bg-rule" />
      </div>
      <h1 class="font-serif max-w-3xl text-4xl font-semibold leading-tight text-ink">
        Le manuel complet pour réussir ton rattrapage du Bac scientifique.
      </h1>
      <p class="mt-4 max-w-2xl text-[#6b5f57]">
        Annales corrigées, quiz d’entraînement, cours illustrés et fiches de révision —
        en Maths, Physique-Chimie et SVT. Crée ton compte gratuit et commence dès maintenant.
      </p>
      <div class="mt-7 flex flex-wrap gap-3">
        <NuxtLink to="/inscription" class="btn-primary">Créer un compte gratuit</NuxtLink>
        <NuxtLink to="/connexion" class="btn-ghost">J'ai déjà un compte</NuxtLink>
      </div>
    </section>

    <!-- Sommaire -->
    <section>
      <h2 class="mb-6 font-serif text-xl font-semibold text-ink">Au sommaire</h2>
      <div class="grid gap-x-7 gap-y-6 sm:grid-cols-2">
        <div v-for="(a, i) in atouts" :key="a.titre" class="flex gap-4">
          <span class="font-serif text-3xl font-semibold leading-none text-[#d8c6b0]">{{ romains[i] }}</span>
          <div>
            <h3 class="font-semibold text-ink">{{ a.titre }}</h3>
            <p class="mt-1 text-sm text-[#6b5f57]">{{ a.texte }}</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Matières (vitrine) -->
    <section>
      <h2 class="mb-5 font-serif text-xl font-semibold text-ink">Les matières couvertes</h2>
      <div class="grid gap-4 sm:grid-cols-3">
        <div v-for="m in matieresVitrine" :key="m.nom" class="card flex items-center gap-3">
          <span class="flex h-11 w-11 items-center justify-center rounded bg-brand-light font-serif text-lg font-semibold text-brand">{{ m.mono }}</span>
          <span class="font-semibold text-ink">{{ m.nom }}</span>
        </div>
      </div>
    </section>

    <!-- Appel à l'action final -->
    <section class="rounded border border-rule bg-brand-light px-6 py-10 text-center">
      <h2 class="font-serif text-2xl font-semibold text-ink">Prêt à remonter ta moyenne ?</h2>
      <p class="mx-auto mt-2 max-w-xl text-[#6b5f57]">Crée ton compte gratuit en moins d’une minute et accède à tout le contenu.</p>
      <NuxtLink to="/inscription" class="btn-primary mt-6 inline-flex">Créer un compte gratuit</NuxtLink>
    </section>
  </div>
</template>
