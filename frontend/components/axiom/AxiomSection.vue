<script setup lang="ts">
// Section racine du tuteur AXIOM, injectée dans le tableau de bord (utilisateur connecté).
const { profil, messages, loading, stats, loadProfil, sendMessage, choisirMatiere, changerMatiere } = useAxiom()
const onglet = ref<'chat' | 'suivi'>('chat')

onMounted(loadProfil)
</script>

<template>
  <section class="card border-brand/30">
    <header class="mb-5 flex flex-wrap items-center justify-between gap-3">
      <div class="flex items-center gap-3">
        <span class="flex h-11 w-11 items-center justify-center rounded bg-brand font-serif text-lg font-semibold text-white">A</span>
        <div>
          <h2 class="font-serif text-xl font-semibold text-ink">AXIOM — ton tuteur IA</h2>
          <p class="text-sm text-[#a8998a]">
            Cours particulier interactif{{ profil?.matiereNom && profil?.matiere ? ' · ' + profil.matiereNom : '' }}
          </p>
        </div>
      </div>
      <button
        v-if="profil?.matiere"
        type="button"
        class="text-sm font-medium text-brand hover:underline"
        @click="changerMatiere"
      >
        Changer de matière
      </button>
    </header>

    <!-- Choix de la matière (première utilisation ou après « changer ») -->
    <AxiomSetup v-if="!profil?.matiere" @choisir="choisirMatiere" />

    <template v-else>
      <div class="mb-4 flex gap-2">
        <button
          v-for="t in (['chat', 'suivi'] as const)"
          :key="t"
          type="button"
          class="rounded-full px-4 py-1.5 text-sm font-medium transition"
          :class="onglet === t ? 'bg-brand text-white' : 'text-[#6b5f57] hover:bg-brand-light'"
          @click="onglet = t"
        >
          {{ t === 'chat' ? 'Cours' : 'Progression' }}
        </button>
      </div>

      <AxiomChat
        v-if="onglet === 'chat'"
        :messages="messages"
        :loading="loading"
        @send="sendMessage"
      />
      <AxiomDashboard v-else :profil="profil" :stats="stats" />
    </template>
  </section>
</template>
