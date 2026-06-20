<script setup lang="ts">
import type { AnnaleContenuDto } from '~/types/api'
import { parseMarkdown } from '~/utils/parseMarkdown'

const route = useRoute()
const id = Number(route.params.id)
const { get, fileUrl } = useApi()

const { data, error } = await useAsyncData(
  `annale-contenu-${id}`,
  () => get<AnnaleContenuDto>(`/annales/${id}/contenu`)
)

const onglet = ref<'sujet' | 'corrige'>('sujet')
const rendu = computed(() => {
  if (!data.value) return ''
  const src = onglet.value === 'corrige' ? data.value.corrige : data.value.sujet
  return src ? parseMarkdown(src) : ''
})
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

    <header class="flex flex-wrap items-center justify-between gap-3">
      <h1 class="text-xl font-bold text-slate-900">{{ data.titre }}</h1>
      <div class="flex gap-2 text-sm">
        <a v-if="data.sujetUrl" :href="fileUrl(data.sujetUrl)" target="_blank" rel="noopener" class="btn-ghost">PDF sujet</a>
        <a v-if="data.corrigeUrl" :href="fileUrl(data.corrigeUrl)" target="_blank" rel="noopener" class="btn-ghost">PDF corrigé</a>
      </div>
    </header>

    <!-- Onglets Sujet / Corrigé -->
    <div class="flex gap-1 rounded-lg bg-slate-100 p-1 text-sm font-medium">
      <button
        class="flex-1 rounded-md px-3 py-1.5 transition"
        :class="onglet === 'sujet' ? 'bg-white text-brand-dark shadow-sm' : 'text-slate-500 hover:text-slate-700'"
        @click="onglet = 'sujet'"
      >📄 Sujet</button>
      <button
        v-if="data.corrige"
        class="flex-1 rounded-md px-3 py-1.5 transition"
        :class="onglet === 'corrige' ? 'bg-white text-brand-dark shadow-sm' : 'text-slate-500 hover:text-slate-700'"
        @click="onglet = 'corrige'"
      >✅ Corrigé détaillé</button>
    </div>

    <div class="card leading-relaxed text-slate-700" v-html="rendu" />
  </article>
</template>
