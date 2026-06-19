<script setup lang="ts">
import type { MatiereDto } from '~/types/api'

const { get } = useApi()
const { data: matieres } = await useAsyncData('matieres', () => get<MatiereDto[]>('/matieres'))

const { nbQuizFaits, moyenneGenerale } = useProgression()
</script>

<template>
  <div class="space-y-10">
    <!-- Hero -->
    <section class="rounded-2xl bg-gradient-to-br from-brand to-brand-dark px-6 py-10 text-white shadow-md">
      <h1 class="text-3xl font-extrabold sm:text-4xl">Réussis ton rattrapage du Bac scientifique 🇲🇦</h1>
      <p class="mt-3 max-w-2xl text-brand-light">
        Annales corrigées, quiz d'entraînement, fiches de révision et planning :
        tout ce qu'il faut pour remonter ta moyenne et décrocher ton Bac.
      </p>
      <div class="mt-6 flex flex-wrap gap-3">
        <NuxtLink to="/matieres" class="btn bg-white text-brand-dark hover:bg-slate-100">
          📚 Commencer à réviser
        </NuxtLink>
        <NuxtLink to="/planning" class="btn bg-brand-dark/40 text-white ring-1 ring-white/30 hover:bg-brand-dark/60">
          📊 Mon planning
        </NuxtLink>
      </div>
    </section>

    <!-- Statistiques de progression -->
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
        <p class="text-3xl font-extrabold text-brand-dark">
          {{ moyenneGenerale !== null ? moyenneGenerale + '/20' : '—' }}
        </p>
        <p class="text-sm text-slate-500">Moyenne aux QCM</p>
      </div>
    </section>

    <!-- Matières -->
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
</template>
