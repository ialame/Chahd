<script setup lang="ts">
import type { AxiomMessage } from '~/types/api'
import { parseMarkdown } from '~/utils/parseMarkdown'

const props = defineProps<{ message: AxiomMessage }>()
const estUser = computed(() => props.message.role === 'user')
// Réponses d'AXIOM : markdown + LaTeX rendus via le moteur du projet (KaTeX).
const html = computed(() => parseMarkdown(props.message.content, true))
</script>

<template>
  <div class="flex" :class="estUser ? 'justify-end' : 'justify-start'">
    <div
      v-if="estUser"
      class="max-w-[85%] whitespace-pre-wrap rounded-lg bg-brand px-4 py-2.5 text-sm text-white"
    >
      {{ message.content }}
    </div>
    <div
      v-else
      class="axiom-prose max-w-[90%] rounded-lg border border-rule bg-white px-4 py-3 text-sm text-ink"
      v-html="html"
    />
  </div>
</template>

<!-- Style global (atteint le contenu v-html) : espacements compacts dans la bulle. -->
<style>
.axiom-prose > :first-child { margin-top: 0; }
.axiom-prose > :last-child { margin-bottom: 0; }
.axiom-prose p { margin: 0.4rem 0; line-height: 1.5; }
.axiom-prose ul, .axiom-prose ol { margin: 0.4rem 0; padding-left: 1.2rem; }
.axiom-prose li { margin: 0.15rem 0; list-style: disc; }
.axiom-prose ol li { list-style: decimal; }
</style>
