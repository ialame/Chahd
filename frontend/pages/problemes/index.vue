<script setup lang="ts">
import type { LeconDto } from '~/types/api'

const { get } = useApi()
const { data: lecons } = await useAsyncData('problemes-maths', () =>
  get<LeconDto[]>('/matieres/maths/cours')
)

const avecProblemes = computed(() => (lecons.value ?? []).filter((l) => l.aProblemes))
</script>

<template>
  <div class="space-y-6">
    <header>
      <h1 class="text-2xl font-bold text-slate-900">Problèmes résolus</h1>
      <p class="text-slate-500">
        Problèmes de synthèse corrigés pas à pas, classés par chapitre (Maths).
      </p>
    </header>

    <ul class="divide-y divide-slate-100 overflow-hidden rounded-xl bg-white ring-1 ring-slate-100">
      <li
        v-for="(l, i) in avecProblemes"
        :key="l.id"
        class="flex items-center justify-between gap-3 px-4 py-3"
      >
        <div class="flex items-center gap-3">
          <span class="flex h-7 w-7 shrink-0 items-center justify-center rounded-full bg-brand/10 text-xs font-bold text-brand-dark">
            {{ i + 1 }}
          </span>
          <p class="font-medium text-slate-800">{{ l.titre }}</p>
        </div>
        <NuxtLink :to="`/problemes/${l.id}`" class="btn-primary">🧩 Voir</NuxtLink>
      </li>
      <li v-if="avecProblemes.length === 0" class="px-4 py-8 text-center text-sm text-slate-500">
        Aucun problème disponible pour le moment.
      </li>
    </ul>
  </div>
</template>
