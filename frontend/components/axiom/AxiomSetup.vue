<script setup lang="ts">
// Choix de la matière à travailler : on réutilise les matières de la filière de l'élève.
import type { MatiereDto } from '~/types/api'

const emit = defineEmits<{ choisir: [slug: string, nom: string] }>()
const { get } = useApi()

const matieres = ref<MatiereDto[]>([])
const chargement = ref(true)

onMounted(async () => {
  try {
    matieres.value = await get<MatiereDto[]>('/matieres')
  } catch {
    matieres.value = []
  } finally {
    chargement.value = false
  }
})

const monos: Record<string, string> = {
  maths: '∑', 'physique-chimie': 'PC', svt: 'SVT', anglais: 'EN',
  philosophie: 'ف', francais: 'FR', informatique: 'IT'
}
function mono(m: MatiereDto) {
  return m.icone || monos[m.slug] || m.nom.slice(0, 2)
}
</script>

<template>
  <div>
    <p class="mb-4 text-sm text-[#6b5f57]">
      Choisis la matière que tu veux travailler avec AXIOM. Il s'adaptera à ton niveau et à ta progression.
    </p>

    <p v-if="chargement" class="text-sm text-[#a8998a]">Chargement des matières…</p>
    <p v-else-if="!matieres.length" class="text-sm text-[#a8998a]">
      Aucune matière disponible pour ta filière.
    </p>

    <div v-else class="grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
      <button
        v-for="m in matieres"
        :key="m.id"
        type="button"
        class="card group flex items-center gap-3 text-left transition hover:-translate-y-0.5 hover:ring-1 hover:ring-brand/40"
        @click="emit('choisir', m.slug, m.nom)"
      >
        <span class="flex h-11 w-11 shrink-0 items-center justify-center rounded bg-brand-light font-serif text-lg font-semibold text-brand">
          {{ mono(m) }}
        </span>
        <span class="font-semibold text-ink">{{ m.nom }}</span>
      </button>
    </div>
  </div>
</template>
