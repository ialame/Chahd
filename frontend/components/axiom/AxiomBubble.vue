<script setup lang="ts">
import type { AxiomMessage } from '~/types/api'
import { parseMarkdown } from '~/utils/parseMarkdown'

const props = defineProps<{ message: AxiomMessage }>()
const estUser = computed(() => props.message.role === 'user')
// Réponses d'AXIOM : markdown + LaTeX rendus via le moteur du projet (KaTeX).
const html = computed(() => parseMarkdown(props.message.content, true))

// Lecture à voix haute (si supportée).
const { syntheseSupportee, enLecture, lectureCle, lire, arreterLecture } = useVoix()
const { contexte } = useContexteEtude()
const langVoix = computed(() => (contexte.value.matiere === 'philosophie' ? 'ar-SA' : 'fr-FR'))
const cle = computed(() => props.message.content.slice(0, 80))
const enCours = computed(() => enLecture.value && lectureCle.value === cle.value)

function basculerLecture() {
  if (enCours.value) arreterLecture()
  else lire(cle.value, props.message.content, langVoix.value)
}

onBeforeUnmount(() => { if (enCours.value) arreterLecture() })
</script>

<template>
  <div class="flex" :class="estUser ? 'justify-end' : 'justify-start'">
    <div
      v-if="estUser"
      class="max-w-[85%] whitespace-pre-wrap rounded-lg bg-brand px-4 py-2.5 text-sm text-white"
    >
      {{ message.content }}
    </div>
    <div v-else class="max-w-[90%]">
      <div
        class="axiom-prose rounded-lg border border-rule bg-white px-4 py-3 text-sm text-ink"
        v-html="html"
      />
      <button
        v-if="syntheseSupportee"
        type="button"
        class="mt-1 inline-flex items-center gap-1 text-xs text-[#a8998a] transition hover:text-brand"
        @click="basculerLecture"
      >
        <i :class="['fa-solid', enCours ? 'fa-stop' : 'fa-volume-high']" />
        {{ enCours ? 'Stop' : 'Écouter' }}
      </button>
    </div>
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
