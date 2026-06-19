<script setup lang="ts">
import type { AnnaleContenuDto } from '~/types/api'

const route = useRoute()
const id = Number(route.params.id)
const { get, fileUrl } = useApi()

const { data, error } = await useAsyncData(
  `annale-contenu-${id}`,
  () => get<AnnaleContenuDto>(`/annales/${id}/contenu`)
)
</script>

<template>
  <div v-if="error" class="card text-center text-slate-500">
    Aucune transcription disponible pour cette annale.
    <NuxtLink to="/annales" class="text-brand-dark underline">Retour aux annales</NuxtLink>
  </div>

  <article v-else-if="data" class="mx-auto max-w-3xl space-y-4">
    <nav class="text-sm text-slate-500">
      <NuxtLink to="/annales" class="hover:underline">Annales</NuxtLink>
      <span class="mx-1">/</span>
      <span class="text-slate-700">{{ data.titre }}</span>
    </nav>

    <div class="flex flex-wrap items-center justify-between gap-2">
      <span class="rounded-full bg-brand/10 px-3 py-1 text-xs font-semibold text-brand-dark">
        📄 Énoncé transcrit (LaTeX)
      </span>
      <a
        v-if="data.sujetUrl"
        :href="fileUrl(data.sujetUrl)"
        target="_blank"
        rel="noopener"
        class="text-sm text-slate-500 hover:text-brand-dark hover:underline"
      >Voir le PDF original →</a>
    </div>

    <div class="card">
      <MathContent :source="data.contenu" />
    </div>
  </article>
</template>
