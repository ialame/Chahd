<script setup lang="ts">
// Panneau AXIOM contextuel (3e colonne d'une page matière). Connaît la matière et
// ce que l'élève regarde (cours / exercices / QCM…) via useContexteEtude.
const { profil, messages, loading, sendMessage, loadProfil } = useAxiom()
const { contexte } = useContexteEtude()

const ouvert = ref(true) // repli sur mobile

onMounted(loadProfil)

// Nouvelle matière → on repart sur une conversation vierge.
watch(
  () => contexte.value.matiere,
  (m, prev) => {
    if (m && prev && m !== prev) messages.value = []
  }
)

// Suggestions cliquables selon le contenu ouvert.
const chips = computed<string[]>(() => {
  switch (contexte.value.type) {
    case 'cours':
      return ['Explique-moi simplement', 'Donne un exemple concret', 'Interroge-moi sur cette notion']
    case 'exercices':
    case 'problemes':
    case 'bac':
      return ['Donne-moi un indice', 'Par où commencer ?', 'Vérifie mon raisonnement']
    case 'fiches':
      return ['Interroge-moi sur la fiche', "Résume l'essentiel"]
    case 'annale':
      return ['Explique cet énoncé', 'La première étape ?']
    case 'qcm':
      return ['Un indice sans la réponse', 'Explique cette question']
    default:
      return ['Par quoi commencer ?', 'Fais-moi réviser cette matière']
  }
})

const sousTitre = computed(() => {
  const c = contexte.value
  if (c.titre) return c.titre
  if (c.matiereNom) return c.matiereNom
  return 'Ton tuteur IA'
})
</script>

<template>
  <div class="rounded-xl bg-white ring-1 ring-rule overflow-hidden">
    <header class="flex items-center gap-2 border-b border-rule px-3 py-2.5">
      <span class="flex h-8 w-8 shrink-0 items-center justify-center rounded bg-brand font-serif text-sm font-semibold text-white">A</span>
      <div class="min-w-0 flex-1">
        <p class="truncate font-serif text-sm font-semibold text-ink">AXIOM</p>
        <p class="truncate text-xs text-[#a8998a]">{{ sousTitre }}</p>
      </div>
      <span v-if="profil" class="shrink-0 text-xs text-[#a8998a]">{{ profil.score }}%</span>
      <button
        type="button"
        class="shrink-0 px-1 text-[#a8998a] hover:text-brand lg:hidden"
        :aria-label="ouvert ? 'Replier' : 'Déplier'"
        @click="ouvert = !ouvert"
      >
        <i :class="['fa-solid', ouvert ? 'fa-chevron-up' : 'fa-chevron-down']" />
      </button>
    </header>

    <div v-show="ouvert" class="p-3">
      <div class="mb-2 flex flex-wrap gap-1.5">
        <button
          v-for="c in chips"
          :key="c"
          type="button"
          class="rounded-full border border-rule bg-paper px-2.5 py-1 text-xs text-[#6b5f57] transition hover:border-brand/40 hover:text-brand disabled:opacity-50"
          :disabled="loading"
          @click="sendMessage(c)"
        >
          {{ c }}
        </button>
      </div>

      <AxiomChat :messages="messages" :loading="loading" @send="sendMessage" />
    </div>
  </div>
</template>
