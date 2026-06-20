<script setup lang="ts">
import { buildAnnaleSections } from '~/utils/annale'

const props = defineProps<{ sujet: string | null; corrige: string | null }>()

const view = computed(() => buildAnnaleSections(props.sujet, props.corrige))
const open = reactive<Record<number, boolean>>({})

// Réinitialise les solutions ouvertes quand on change d'annale.
watch(() => props.sujet, () => { for (const k of Object.keys(open)) delete open[Number(k)] })
</script>

<template>
  <div class="space-y-5">
    <div v-if="view.preambleHtml" class="leading-relaxed text-slate-700" v-html="view.preambleHtml" />

    <section v-for="(sec, i) in view.sections" :key="i" class="space-y-3">
      <!-- Énoncé -->
      <div class="leading-relaxed text-slate-700" v-html="sec.enonceHtml" />

      <!-- Bouton solution + corrigé repliable -->
      <template v-if="sec.corrigeHtml">
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
          <div class="leading-relaxed text-slate-700" v-html="sec.corrigeHtml" />
        </div>
      </template>
      <p v-else class="text-xs italic text-slate-400">Corrigé non disponible.</p>
    </section>
  </div>
</template>
