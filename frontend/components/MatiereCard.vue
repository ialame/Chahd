<script setup lang="ts">
import type { MatiereDto } from '~/types/api'

const props = defineProps<{ matiere: MatiereDto }>()
const { moyenneParMatiere } = useProgression()
const moyenne = computed(() => moyenneParMatiere(props.matiere.slug))
</script>

<template>
  <NuxtLink
    :to="`/matieres/${matiere.slug}`"
    class="card group flex flex-col gap-3 transition hover:-translate-y-0.5 hover:shadow-md"
  >
    <div class="flex items-center gap-3">
      <span
        class="flex h-12 w-12 items-center justify-center rounded-xl text-2xl"
        :style="{ backgroundColor: (matiere.couleur ?? '#0d9488') + '1a' }"
      >
        {{ matiere.icone ?? '📘' }}
      </span>
      <div>
        <h3 class="font-bold text-slate-900 group-hover:text-brand-dark">{{ matiere.nom }}</h3>
        <p class="text-xs text-slate-500">Coefficient {{ matiere.coefficient }}</p>
      </div>
    </div>
    <p class="line-clamp-2 text-sm text-slate-600">{{ matiere.description }}</p>
    <div class="mt-auto flex items-center justify-between pt-2 text-xs">
      <span class="text-slate-500">{{ matiere.nbChapitres }} chapitres</span>
      <span
        v-if="moyenne !== null"
        class="rounded-full bg-brand/10 px-2 py-0.5 font-semibold text-brand-dark"
      >
        Moyenne QCM : {{ moyenne }}/20
      </span>
    </div>
  </NuxtLink>
</template>
