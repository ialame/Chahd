<script setup lang="ts">
import type { LeconContenuDto } from '~/types/api'
import { parseMarkdown } from '~/utils/parseMarkdown'

const route = useRoute()
const id = Number(route.params.id)
const { get } = useApi()

const { data, error } = await useAsyncData(
  `problemes-contenu-${id}`,
  () => get<LeconContenuDto>(`/cours/${id}/problemes`)
)

const rendered = computed(() => (data.value ? parseMarkdown(data.value.contenu) : ''))
</script>

<template>
  <div v-if="error" class="card text-center text-slate-500">
    Problèmes indisponibles.
    <NuxtLink to="/problemes" class="text-brand-dark underline">Retour aux problèmes</NuxtLink>
  </div>

  <article v-else-if="data" class="mx-auto max-w-3xl space-y-4">
    <nav class="text-sm text-slate-500">
      <NuxtLink to="/problemes" class="hover:underline">Problèmes</NuxtLink>
      <span class="mx-1">/</span>
      <span class="text-slate-700">{{ data.titre }}</span>
    </nav>

    <h1 class="text-xl font-bold text-slate-900">{{ data.titre }}</h1>

    <div class="flex flex-wrap gap-2">
      <span class="inline-block rounded-full bg-brand/10 px-3 py-1 text-xs font-semibold text-brand-dark">
        🧩 Problèmes résolus
      </span>
      <NuxtLink :to="`/cours/${id}`" class="inline-block rounded-full bg-slate-100 px-3 py-1 text-xs font-semibold text-slate-600 hover:bg-slate-200">
        📘 Voir le cours
      </NuxtLink>
      <NuxtLink :to="`/exercices/${id}`" class="inline-block rounded-full bg-slate-100 px-3 py-1 text-xs font-semibold text-slate-600 hover:bg-slate-200">
        ✏️ Exercices
      </NuxtLink>
    </div>

    <div class="card leading-relaxed text-slate-700" v-html="rendered" />
  </article>
</template>
