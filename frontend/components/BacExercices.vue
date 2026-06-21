<script setup lang="ts">
import type { ExoBacDto } from '~/types/api'
import { parseMarkdown } from '~/utils/parseMarkdown'

const props = defineProps<{ exos: ExoBacDto[] }>()
const open = reactive<Record<number, boolean>>({})
watch(() => props.exos, () => { for (const k of Object.keys(open)) delete open[Number(k)] })

const sessionLabel = (s: string) => (s === 'RATTRAPAGE' ? 'Rattrapage' : 'Normale')
</script>

<template>
  <div class="space-y-5">
    <p v-if="exos.length === 0" class="text-sm italic text-slate-400">
      Aucun exercice du bac pour ce chapitre.
    </p>

    <section v-for="(e, i) in exos" :key="i" class="space-y-3 border-b border-slate-100 pb-5 last:border-0">
      <div class="flex flex-wrap items-center gap-2">
        <span class="rounded-full bg-brand/10 px-3 py-1 text-xs font-bold text-brand-dark">
          {{ e.extrait ? "D'après " : '' }}Bac {{ e.annee }} · Session {{ sessionLabel(e.session) }}
        </span>
        <span class="text-sm font-semibold text-slate-700">
          {{ e.numero }}<template v-if="e.titre"> — {{ e.titre }}</template>
        </span>
      </div>

      <div v-if="e.enonce" class="leading-relaxed text-slate-700" v-html="parseMarkdown(e.enonce)" />

      <template v-if="e.corrige">
        <button
          class="inline-flex items-center gap-2 rounded-lg px-3 py-1.5 text-sm font-semibold transition"
          :class="open[i] ? 'bg-emerald-600 text-white' : 'bg-emerald-50 text-emerald-700 ring-1 ring-emerald-200 hover:bg-emerald-100'"
          @click="open[i] = !open[i]"
        >
          <i class="fa-solid" :class="open[i] ? 'fa-eye-slash' : 'fa-eye'" />
          {{ open[i] ? 'Masquer la solution' : 'Voir la solution' }}
        </button>
        <div v-show="open[i]" class="rounded-xl border border-emerald-200 bg-emerald-50/40 p-4">
          <div class="mb-2 flex items-center gap-1.5 text-sm font-bold text-emerald-700">
            <i class="fa-solid fa-check-double" /> Corrigé
          </div>
          <div class="leading-relaxed text-slate-700" v-html="parseMarkdown(e.corrige)" />
        </div>
      </template>
    </section>
  </div>
</template>
