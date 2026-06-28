<script setup lang="ts">
import type { AxiomMessage } from '~/types/api'

const props = defineProps<{ messages: AxiomMessage[]; loading: boolean }>()
const emit = defineEmits<{ send: [content: string] }>()

const input = ref('')
const scroller = ref<HTMLElement | null>(null)

// Voix (si supportée par le navigateur) : dictée ponctuelle + mode mains libres.
const {
  reconnaissanceSupportee, enEcoute, mainsLibres, ecouteQuestion,
  demarrerDictee, arreterDictee, demarrerMainsLibres, arreterMainsLibres,
} = useVoix()
const { contexte } = useContexteEtude()
const langVoix = computed(() => (contexte.value.matiere === 'philosophie' ? 'ar-SA' : 'fr-FR'))

function basculerMicro() {
  if (enEcoute.value) {
    arreterDictee()
    return
  }
  demarrerDictee(
    langVoix.value,
    (t) => { input.value = t },
    () => { envoyer() } // ~3 s de silence → arrêt + envoi automatique
  )
}

// Mode mains libres : l'élève dit « Axiom » puis sa question ; après ~3 s de silence,
// la question s'écrit dans le champ et part automatiquement.
function basculerMainsLibres() {
  if (mainsLibres.value) {
    arreterMainsLibres()
    return
  }
  demarrerMainsLibres(
    langVoix.value,
    (t) => { input.value = t },
    (q) => { input.value = q; envoyer() }
  )
}

onBeforeUnmount(() => { arreterDictee(); arreterMainsLibres() })

function envoyer() {
  const t = input.value.trim()
  if (!t || props.loading) return
  emit('send', t)
  input.value = ''
}

function onKey(e: KeyboardEvent) {
  if (e.key === 'Enter' && !e.shiftKey) {
    e.preventDefault()
    envoyer()
  }
}

// Défilement automatique vers le bas à chaque nouveau message / pendant la frappe.
watch(
  () => [props.messages.length, props.loading],
  async () => {
    await nextTick()
    if (scroller.value) scroller.value.scrollTop = scroller.value.scrollHeight
  }
)
</script>

<template>
  <div>
    <div
      ref="scroller"
      class="flex max-h-[28rem] min-h-[16rem] flex-col gap-3 overflow-y-auto rounded border border-rule bg-paper p-4"
    >
      <AxiomBubble v-for="(m, i) in messages" :key="i" :message="m" />
      <AxiomTyping v-if="loading" />
      <p v-if="!messages.length && !loading" class="m-auto text-sm text-[#a8998a]">
        Pose ta première question à AXIOM…
      </p>
    </div>

    <p
      v-if="mainsLibres"
      class="mt-2 flex items-center gap-2 text-xs font-medium"
      :class="ecouteQuestion ? 'text-brand' : 'text-[#a8998a]'"
    >
      <span
        class="inline-block h-2 w-2 rounded-full"
        :class="ecouteQuestion ? 'bg-brand animate-pulse' : 'bg-[#a8998a]'"
      />
      {{ ecouteQuestion ? 'À l’écoute de ta question…' : 'Dis « Axiom » pour me parler' }}
    </p>

    <div class="mt-3 flex items-end gap-2">
      <button
        v-if="reconnaissanceSupportee"
        type="button"
        class="shrink-0 flex h-9 w-9 items-center justify-center rounded border transition"
        :class="enEcoute
          ? 'border-brand bg-brand text-white animate-pulse'
          : 'border-rule text-[#6b5f57] hover:border-brand/50 hover:text-brand'"
        :title="enEcoute ? 'Arrêter la dictée' : 'Dicter à la voix'"
        @click="basculerMicro"
      >
        <i :class="['fa-solid', enEcoute ? 'fa-stop' : 'fa-microphone']" />
      </button>
      <button
        v-if="reconnaissanceSupportee"
        type="button"
        class="shrink-0 flex h-9 w-9 items-center justify-center rounded border transition"
        :class="mainsLibres
          ? 'border-brand bg-brand-light text-brand'
          : 'border-rule text-[#6b5f57] hover:border-brand/50 hover:text-brand'"
        :title="mainsLibres ? 'Désactiver le mode mains libres' : 'Mode mains libres : dis « Axiom »'"
        @click="basculerMainsLibres"
      >
        <i class="fa-solid fa-tower-broadcast" />
      </button>
      <textarea
        v-model="input"
        rows="2"
        :placeholder="enEcoute ? 'Parle… je t\'écoute' : 'Écris ta question ou ta réponse… (Entrée pour envoyer, Maj+Entrée pour un retour à la ligne)'"
        class="flex-1 resize-none rounded border border-rule bg-white px-3 py-2 text-sm text-ink focus:border-brand focus:outline-none focus:ring-1 focus:ring-brand"
        @keydown="onKey"
      />
      <button
        type="button"
        class="btn-primary shrink-0"
        :disabled="loading || !input.trim()"
        @click="envoyer"
      >
        Envoyer
      </button>
    </div>
  </div>
</template>
