<script setup lang="ts">
import type { AnnaleDto } from '~/types/api'

const { get } = useApi()
const { data: annales } = await useAsyncData('annales', () => get<AnnaleDto[]>('/annales'))

const matiereFiltre = ref<string>('')
const sessionFiltre = ref<string>('')

const matieresDispo = computed(() => {
  const map = new Map<string, string>()
  for (const a of annales.value ?? []) map.set(a.matiereSlug, a.matiereNom)
  return Array.from(map, ([slug, nom]) => ({ slug, nom }))
})

const filtrees = computed(() =>
  (annales.value ?? []).filter(
    (a) =>
      (!matiereFiltre.value || a.matiereSlug === matiereFiltre.value) &&
      (!sessionFiltre.value || a.session === sessionFiltre.value)
  )
)

const sessionLabel = (s: string) => (s === 'RATTRAPAGE' ? 'Rattrapage' : 'Normale')
</script>

<template>
  <div class="space-y-6">
    <header>
      <h1 class="text-2xl font-bold text-slate-900">Annales d'examens</h1>
      <p class="text-slate-500">Sujets des sessions normale et de rattrapage, par matière.</p>
    </header>

    <!-- Filtres -->
    <div class="flex flex-wrap gap-3">
      <select v-model="matiereFiltre" class="rounded-lg border border-slate-200 bg-white px-3 py-2 text-sm">
        <option value="">Toutes les matières</option>
        <option v-for="m in matieresDispo" :key="m.slug" :value="m.slug">{{ m.nom }}</option>
      </select>
      <select v-model="sessionFiltre" class="rounded-lg border border-slate-200 bg-white px-3 py-2 text-sm">
        <option value="">Toutes les sessions</option>
        <option value="NORMALE">Session normale</option>
        <option value="RATTRAPAGE">Session de rattrapage</option>
      </select>
    </div>

    <ul class="divide-y divide-slate-100 overflow-hidden rounded-xl bg-white ring-1 ring-slate-100">
      <li v-for="a in filtrees" :key="a.id" class="flex items-center justify-between gap-3 px-4 py-3">
        <div>
          <p class="font-medium text-slate-800">{{ a.titre }}</p>
          <p class="text-xs text-slate-500">
            {{ a.matiereNom }} · {{ a.annee }} ·
            <span
              class="rounded-full px-2 py-0.5 text-[11px] font-medium"
              :class="a.session === 'RATTRAPAGE' ? 'bg-amber-100 text-amber-700' : 'bg-slate-100 text-slate-600'"
            >{{ sessionLabel(a.session) }}</span>
          </p>
        </div>
        <div class="flex flex-wrap items-center gap-2 text-sm">
          <NuxtLink v-if="a.aContenu" :to="`/annales/${a.id}`" class="btn-primary">📄 Lire</NuxtLink>
          <span v-else class="self-center text-xs text-slate-400">Bientôt</span>
        </div>
      </li>
      <li v-if="filtrees.length === 0" class="px-4 py-8 text-center text-sm text-slate-500">
        Aucune annale ne correspond à ces filtres.
      </li>
    </ul>
  </div>
</template>
