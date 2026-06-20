<script setup lang="ts">
import type { LeconDto } from '~/types/api'

const { get } = useApi()
const { data: lecons } = await useAsyncData('exercices-maths', () =>
  get<LeconDto[]>('/matieres/maths/cours')
)

const avecExos = computed(() => (lecons.value ?? []).filter((l) => l.aExercices))
</script>

<template>
  <div class="space-y-6">
    <header>
      <h1 class="text-2xl font-bold text-slate-900">Exercices résolus</h1>
      <p class="text-slate-500">
        Exercices d'entraînement corrigés pas à pas, classés par chapitre (Maths).
      </p>
    </header>

    <ul class="divide-y divide-slate-100 overflow-hidden rounded-xl bg-white ring-1 ring-slate-100">
      <li
        v-for="(l, i) in avecExos"
        :key="l.id"
        class="flex items-center justify-between gap-3 px-4 py-3"
      >
        <div class="flex items-center gap-3">
          <span class="flex h-7 w-7 shrink-0 items-center justify-center rounded-full bg-brand/10 text-xs font-bold text-brand-dark">
            {{ i + 1 }}
          </span>
          <p class="font-medium text-slate-800">{{ l.titre }}</p>
        </div>
        <NuxtLink :to="`/exercices/${l.id}`" class="btn-primary">✏️ Voir</NuxtLink>
      </li>
      <li v-if="avecExos.length === 0" class="px-4 py-8 text-center text-sm text-slate-500">
        Aucun exercice disponible pour le moment.
      </li>
    </ul>
  </div>
</template>
