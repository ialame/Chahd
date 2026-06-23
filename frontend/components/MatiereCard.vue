<script setup lang="ts">
import type { MatiereDto } from '~/types/api'

const props = defineProps<{ matiere: MatiereDto }>()
const { moyenneParMatiere } = useProgression()
const moyenne = computed(() => moyenneParMatiere(props.matiere.slug))

// Monogrammes typographiques par matière (à la place des emoji).
const monos: Record<string, string> = {
  maths: '∑',
  'physique-chimie': 'PC',
  svt: 'SVT'
}
const mono = computed(() => monos[props.matiere.slug] ?? '∑')
</script>

<template>
  <NuxtLink
    :to="`/matieres/${matiere.slug}`"
    class="card group flex flex-col gap-3 transition hover:-translate-y-0.5 hover:ring-brand/40"
  >
    <div class="flex items-center gap-3">
      <span class="flex h-12 w-12 items-center justify-center rounded bg-brand-light font-serif text-xl font-semibold text-brand">
        {{ mono }}
      </span>
      <div>
        <h3 class="font-bold text-ink group-hover:text-brand">{{ matiere.nom }}</h3>
        <p class="text-xs text-[#a8998a]">Coefficient {{ matiere.coefficient }}</p>
      </div>
    </div>
    <p class="line-clamp-2 text-sm text-[#6b5f57]">{{ matiere.description }}</p>
    <div class="mt-auto flex items-center justify-between pt-2 text-xs">
      <span class="text-[#a8998a]">{{ matiere.nbChapitres }} chapitres</span>
      <span
        v-if="moyenne !== null"
        class="rounded-full bg-brand-light px-2 py-0.5 font-semibold text-brand"
      >
        Moyenne QCM : {{ moyenne }}/20
      </span>
    </div>
  </NuxtLink>
</template>
