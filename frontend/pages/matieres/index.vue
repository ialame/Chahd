<script setup lang="ts">
import type { MatiereDto } from '~/types/api'

const { get } = useApi()
const { data: matieres } = await useAsyncData('matieres-all', () => get<MatiereDto[]>('/matieres'))
</script>

<template>
  <div class="space-y-6">
    <header>
      <h1 class="text-2xl font-bold text-ink">Toutes les matières</h1>
      <p class="text-[#a8998a]">Choisis une matière pour accéder à ses chapitres, fiches et quiz.</p>
    </header>
    <div class="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
      <MatiereCard v-for="m in matieres" :key="m.id" :matiere="m" />
    </div>
  </div>
</template>
