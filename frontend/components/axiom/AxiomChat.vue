<script setup lang="ts">
import type { AxiomMessage } from '~/types/api'

const props = defineProps<{ messages: AxiomMessage[]; loading: boolean }>()
const emit = defineEmits<{ send: [content: string] }>()

const input = ref('')
const scroller = ref<HTMLElement | null>(null)

// Dictée vocale (si supportée par le navigateur).
const { reconnaissanceSupportee, enEcoute, demarrerDictee, arreterDictee } = useVoix()
const { contexte } = useContexteEtude()
const langVoix = computed(() => (contexte.value.matiere === 'philosophie' ? 'ar-SA' : 'fr-FR'))

function basculerMicro() {
  if (enEcoute.value) {
    arreterDictee()
    return
  }
  demarrerDictee(langVoix.value, (t) => {
    input.value = t
  })
}

onBeforeUnmount(arreterDictee)

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
