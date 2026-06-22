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

const atouts = [
  { icone: '📄', titre: '42 annales corrigées', texte: 'Sessions 2019–2025 (Maths, PC, SVT) : énoncés et corrigés transcrits, figures, plus les PDF originaux imprimables.' },
  { icone: '✅', titre: "Quiz d'entraînement", texte: 'QCM « notions » et « applications » par chapitre, avec corrigés expliqués et note sur 20.' },
  { icone: '📝', titre: 'Cours & fiches', texte: 'Cours illustrés (schémas) et fiches de révision concises, chapitre par chapitre.' },
  { icone: '📊', titre: 'Suivi & planning', texte: 'Suis ta progression aux quiz et organise tes révisions jusqu’au jour J.' },
]
const matieresVitrine = [
  { nom: 'Mathématiques', icone: '∑', couleur: '#1F4E79' },
  { nom: 'Physique-Chimie', icone: '⚛', couleur: '#0f766e' },
  { nom: 'SVT', icone: '🧬', couleur: '#b45309' },
]
</script>

<template>
  <!-- ============ Visiteur connecté : tableau de bord ============ -->
  <div v-if="estConnecte" class="space-y-10">
    <section class="rounded-2xl bg-gradient-to-br from-brand to-brand-dark px-6 py-10 text-white shadow-md">
      <h1 class="text-3xl font-extrabold sm:text-4xl">Bon retour{{ user?.nom ? ', ' + user.nom : '' }} 👋</h1>
      <p class="mt-3 max-w-2xl text-brand-light">Reprends tes révisions là où tu t’es arrêté.</p>
      <div class="mt-6 flex flex-wrap gap-3">
        <NuxtLink to="/matieres" class="btn bg-white text-brand-dark hover:bg-slate-100">📚 Continuer à réviser</NuxtLink>
        <NuxtLink to="/mon-avancement" class="btn bg-brand-dark/40 text-white ring-1 ring-white/30 hover:bg-brand-dark/60">📊 Mon avancement</NuxtLink>
      </div>
    </section>

    <section class="grid gap-4 sm:grid-cols-3">
      <div class="card text-center">
        <p class="text-3xl font-extrabold text-brand-dark">{{ matieres?.length ?? 0 }}</p>
        <p class="text-sm text-slate-500">Matières disponibles</p>
      </div>
      <div class="card text-center">
        <p class="text-3xl font-extrabold text-brand-dark">{{ nbQuizFaits }}</p>
        <p class="text-sm text-slate-500">Quiz réalisés</p>
      </div>
      <div class="card text-center">
        <p class="text-3xl font-extrabold text-brand-dark">{{ moyenneGenerale !== null ? moyenneGenerale + '/20' : '—' }}</p>
        <p class="text-sm text-slate-500">Moyenne aux QCM</p>
      </div>
    </section>

    <section>
      <div class="mb-4 flex items-center justify-between">
        <h2 class="text-xl font-bold text-slate-900">Tes matières</h2>
        <NuxtLink to="/matieres" class="text-sm font-medium text-brand-dark hover:underline">Tout voir →</NuxtLink>
      </div>
      <div class="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
        <MatiereCard v-for="m in matieres" :key="m.id" :matiere="m" />
      </div>
    </section>
  </div>

  <!-- ============ Visiteur non connecté : page d'accueil publique ============ -->
  <div v-else class="space-y-12">
    <!-- Hero -->
    <section class="rounded-2xl bg-gradient-to-br from-brand to-brand-dark px-6 py-14 text-center text-white shadow-md">
      <h1 class="mx-auto max-w-3xl text-3xl font-extrabold sm:text-4xl">Réussis ton rattrapage du Bac scientifique 🇲🇦</h1>
      <p class="mx-auto mt-4 max-w-2xl text-brand-light">
        Annales corrigées, quiz d’entraînement, cours illustrés et fiches de révision —
        en Maths, Physique-Chimie et SVT. Crée ton compte gratuit et commence dès maintenant.
      </p>
      <div class="mt-7 flex flex-wrap justify-center gap-3">
        <NuxtLink to="/inscription" class="btn bg-white text-brand-dark hover:bg-slate-100">S'inscrire gratuitement</NuxtLink>
        <NuxtLink to="/connexion" class="btn bg-brand-dark/40 text-white ring-1 ring-white/30 hover:bg-brand-dark/60">J'ai déjà un compte</NuxtLink>
      </div>
    </section>

    <!-- Atouts -->
    <section>
      <h2 class="mb-5 text-center text-xl font-bold text-slate-900">Tout ce qu’il faut pour réviser</h2>
      <div class="grid gap-4 sm:grid-cols-2">
        <div v-for="a in atouts" :key="a.titre" class="card flex gap-4">
          <div class="text-3xl">{{ a.icone }}</div>
          <div>
            <h3 class="font-bold text-slate-900">{{ a.titre }}</h3>
            <p class="mt-1 text-sm text-slate-500">{{ a.texte }}</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Matières (vitrine) -->
    <section>
      <h2 class="mb-5 text-center text-xl font-bold text-slate-900">Les matières couvertes</h2>
      <div class="grid gap-4 sm:grid-cols-3">
        <div v-for="m in matieresVitrine" :key="m.nom" class="card flex items-center gap-3">
          <span class="flex h-11 w-11 items-center justify-center rounded-xl text-xl font-bold text-white" :style="{ background: m.couleur }">{{ m.icone }}</span>
          <span class="font-semibold text-slate-800">{{ m.nom }}</span>
        </div>
      </div>
    </section>

    <!-- Appel à l'action final -->
    <section class="rounded-2xl border border-brand/20 bg-brand/5 px-6 py-10 text-center">
      <h2 class="text-2xl font-bold text-slate-900">Prêt à remonter ta moyenne ?</h2>
      <p class="mx-auto mt-2 max-w-xl text-slate-600">Crée ton compte gratuit en moins d’une minute et accède à tout le contenu.</p>
      <NuxtLink to="/inscription" class="btn mt-6 inline-block bg-brand text-white hover:bg-brand-dark">S'inscrire gratuitement</NuxtLink>
    </section>
  </div>
</template>
