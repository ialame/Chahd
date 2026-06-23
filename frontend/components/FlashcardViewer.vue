<script setup lang="ts">
import type { FlashcardDto } from '~/types/api'
import { inlineMath } from '~/utils/inlineMath'

const props = defineProps<{ cards: FlashcardDto[] }>()

const order = ref<number[]>([])
const idx = ref(0)
const revealed = ref(false)

function reset(shuffle = false) {
  const n = props.cards.length
  const a = Array.from({ length: n }, (_, i) => i)
  if (shuffle) {
    for (let i = n - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1))
      ;[a[i], a[j]] = [a[j], a[i]]
    }
  }
  order.value = a
  idx.value = 0
  revealed.value = false
}
watch(() => props.cards, () => reset(false), { immediate: true })

const total = computed(() => order.value.length)
const current = computed(() => props.cards[order.value[idx.value]] ?? null)
function next() { if (idx.value < total.value - 1) { idx.value++; revealed.value = false } }
function prev() { if (idx.value > 0) { idx.value--; revealed.value = false } }
</script>

<template>
  <div v-if="current" class="space-y-4">
    <!-- Barre de progression -->
    <div class="flex items-center justify-between text-xs text-[#a8998a]">
      <span>Fiche {{ idx + 1 }} / {{ total }}</span>
      <div class="flex gap-1.5">
        <button class="rounded-lg border border-rule px-2 py-1 hover:bg-paper" title="Mélanger" @click="reset(true)">
          <i class="fa-solid fa-shuffle" />
        </button>
        <button class="rounded-lg border border-rule px-2 py-1 hover:bg-paper" title="Remettre dans l'ordre" @click="reset(false)">
          <i class="fa-solid fa-arrow-rotate-left" />
        </button>
      </div>
    </div>
    <div class="h-1 overflow-hidden rounded-full bg-rule">
      <div class="h-full bg-brand transition-all" :style="{ width: ((idx + 1) / total * 100) + '%' }" />
    </div>

    <!-- La carte (clic = retourner) -->
    <div
      class="flex min-h-[220px] cursor-pointer flex-col items-center justify-center rounded-2xl border-2 p-6 text-center transition-colors"
      :class="revealed ? 'border-theo bg-emerald-50/50' : 'border-rule bg-paper'"
      @click="revealed = !revealed"
    >
      <span class="mb-3 text-[11px] font-bold uppercase tracking-widest" :class="revealed ? 'text-theo' : 'text-brand'">
        {{ revealed ? 'Réponse' : 'Question' }}
      </span>
      <div class="leading-relaxed text-ink" v-html="inlineMath(revealed ? current.reponse : current.question)" />
      <span class="mt-4 text-[11px] text-[#a8998a]">
        <i class="fa-solid fa-hand-pointer mr-1" />{{ revealed ? 'cliquer pour revoir la question' : 'cliquer pour révéler la réponse' }}
      </span>
    </div>

    <!-- Navigation -->
    <div class="flex items-center justify-between">
      <button class="btn-ghost" :disabled="idx === 0" @click="prev"><i class="fa-solid fa-arrow-left mr-1" />Précédente</button>
      <button class="btn-primary" @click="revealed = !revealed">{{ revealed ? 'Question' : 'Réponse' }}</button>
      <button class="btn-ghost" :disabled="idx >= total - 1" @click="next">Suivante<i class="fa-solid fa-arrow-right ml-1" /></button>
    </div>
  </div>

  <p v-else class="py-8 text-center text-sm italic text-[#a8998a]">Aucune fiche pour ce chapitre.</p>
</template>
