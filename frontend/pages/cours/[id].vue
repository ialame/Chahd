<script setup lang="ts">
import type { LeconContenuDto } from '~/types/api'
import { parseMarkdown } from '~/utils/parseMarkdown'

const route = useRoute()
const id = Number(route.params.id)
const { get } = useApi()

const { data, error } = await useAsyncData(
  `cours-contenu-${id}`,
  () => get<LeconContenuDto>(`/cours/${id}/contenu`)
)

const rendered = computed(() => (data.value ? parseMarkdown(data.value.contenu) : ''))
</script>

<template>
  <div v-if="error" class="card text-center text-slate-500">
    Cours indisponible.
    <NuxtLink to="/matieres" class="text-brand-dark underline">Retour aux matières</NuxtLink>
  </div>

  <article v-else-if="data" class="mx-auto max-w-3xl space-y-4">
    <nav class="text-sm text-slate-500">
      <NuxtLink to="/matieres" class="hover:underline">Matières</NuxtLink>
      <span class="mx-1">/</span>
      <NuxtLink :to="`/matieres/${data.matiereSlug}`" class="hover:underline capitalize">{{ data.matiereSlug }}</NuxtLink>
      <span class="mx-1">/</span>
      <span class="text-slate-700">Cours</span>
    </nav>

    <span class="inline-block rounded-full bg-brand/10 px-3 py-1 text-xs font-semibold text-brand-dark">
      📘 Cours complet
    </span>

    <div class="card leading-relaxed text-slate-700" v-html="rendered" />
  </article>
</template>
