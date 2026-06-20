<script setup lang="ts">
import type { AnnaleContenuDto } from '~/types/api'

const route = useRoute()
const id = Number(route.params.id)
const { get } = useApi()

const { data, error } = await useAsyncData(
  `annale-contenu-${id}`,
  () => get<AnnaleContenuDto>(`/annales/${id}/contenu`)
)
</script>

<template>
  <div v-if="error" class="card text-center text-slate-500">
    Annale indisponible.
    <NuxtLink to="/annales" class="text-brand-dark underline">Retour aux annales</NuxtLink>
  </div>

  <article v-else-if="data" class="mx-auto max-w-3xl space-y-4">
    <nav class="text-sm text-slate-500">
      <NuxtLink to="/annales" class="hover:underline">Annales</NuxtLink>
      <span class="mx-1">/</span>
      <span class="text-slate-700">{{ data.titre }}</span>
    </nav>

    <header>
      <h1 class="text-xl font-bold text-slate-900">{{ data.titre }}</h1>
      <p class="text-sm text-slate-500">
        Énoncé puis corrigé repliable, exercice par exercice — cliquez sur « Voir la solution ».
      </p>
    </header>

    <div class="card">
      <AnnaleReader :sujet="data.sujet" :corrige="data.corrige" />
    </div>
  </article>
</template>
