<script setup lang="ts">
import type { AxiomProfilDto } from '~/types/api'

defineProps<{ profil: AxiomProfilDto; stats: { exercices: number; reussites: number } }>()
</script>

<template>
  <div class="space-y-5">
    <div class="grid gap-4 sm:grid-cols-2 lg:grid-cols-4">
      <div class="card text-center">
        <p class="font-serif text-3xl font-semibold text-brand">{{ profil.score }}%</p>
        <p class="text-sm text-[#a8998a]">Maîtrise estimée</p>
      </div>
      <div class="card text-center">
        <p class="font-serif text-3xl font-semibold text-brand">{{ profil.sessions }}</p>
        <p class="text-sm text-[#a8998a]">Sessions</p>
      </div>
      <div class="card text-center">
        <p class="font-serif text-3xl font-semibold text-brand">{{ stats.exercices }}</p>
        <p class="text-sm text-[#a8998a]">Exercices (session)</p>
      </div>
      <div class="card text-center">
        <p class="font-serif text-3xl font-semibold text-brand">{{ stats.reussites }}</p>
        <p class="text-sm text-[#a8998a]">Réussites (session)</p>
      </div>
    </div>

    <div class="grid gap-4 sm:grid-cols-2">
      <div class="card">
        <h3 class="mb-2 font-semibold text-ink">Points forts</h3>
        <ul v-if="profil.pointsForts.length" class="space-y-1 text-sm text-[#6b5f57]">
          <li v-for="p in profil.pointsForts" :key="p" class="flex items-center gap-2">
            <span class="h-1.5 w-1.5 rounded-full bg-theo" /> {{ p }}
          </li>
        </ul>
        <p v-else class="text-sm text-[#a8998a]">À découvrir au fil des sessions.</p>
      </div>
      <div class="card">
        <h3 class="mb-2 font-semibold text-ink">À travailler</h3>
        <ul v-if="profil.pointsFaibles.length" class="space-y-1 text-sm text-[#6b5f57]">
          <li v-for="p in profil.pointsFaibles" :key="p" class="flex items-center gap-2">
            <span class="h-1.5 w-1.5 rounded-full bg-brand" /> {{ p }}
          </li>
        </ul>
        <p v-else class="text-sm text-[#a8998a]">À découvrir au fil des sessions.</p>
      </div>
    </div>

    <p class="text-center text-xs text-[#a8998a]">
      {{ profil.matiereNom }} · {{ profil.niveau }}
    </p>
  </div>
</template>
