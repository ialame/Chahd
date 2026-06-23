<script setup lang="ts">
const links = [
  { to: '/', label: 'Accueil' },
  { to: '/matieres', label: 'Matières' },
  { to: '/annales', label: 'Annales' },
  { to: '/planning', label: 'Planning' }
]

const { user, estConnecte, estAdmin, deconnexion } = useAuth()
const { get } = useApi()
const router = useRouter()
function seDeconnecter() {
  deconnexion()
  router.push('/')
}

// Nombre de fiches à réviser aujourd'hui (badge de navigation).
const revisionDue = ref(0)
async function chargerRevision() {
  if (!estConnecte.value) { revisionDue.value = 0; return }
  try {
    const s = await get<{ dueAujourdhui: number }>('/revision/stats')
    revisionDue.value = s.dueAujourdhui
  } catch { revisionDue.value = 0 }
}
onMounted(chargerRevision)
watch(estConnecte, chargerRevision)
</script>

<template>
  <div class="min-h-screen flex flex-col">
    <header class="sticky top-0 z-10 border-b-2 border-brand bg-paper/95 backdrop-blur">
      <div class="mx-auto flex max-w-5xl items-center justify-between px-4 py-3">
        <NuxtLink to="/" class="font-serif text-2xl font-semibold text-brand">
          Chahd
        </NuxtLink>
        <nav class="flex items-center gap-1 text-sm">
          <NuxtLink
            v-for="l in links"
            :key="l.to"
            :to="l.to"
            class="rounded px-3 py-1.5 font-medium text-[#6b5f57] hover:bg-brand-light hover:text-brand"
            active-class="!bg-brand-light !text-brand"
          >
            {{ l.label }}
          </NuxtLink>

          <span class="mx-1 h-5 w-px bg-rule" />

          <template v-if="estConnecte">
            <NuxtLink
              to="/reviser"
              class="relative rounded px-3 py-1.5 font-medium text-[#6b5f57] hover:bg-brand-light hover:text-brand"
              active-class="!bg-brand-light !text-brand"
            >
              <i class="fa-solid fa-layer-group" /> Réviser
              <span
                v-if="revisionDue > 0"
                class="absolute -right-1 -top-1 inline-flex h-4 min-w-4 items-center justify-center rounded-full bg-brand px-1 text-[10px] font-bold text-white"
              >{{ revisionDue }}</span>
            </NuxtLink>
            <NuxtLink
              to="/tableau-de-bord"
              class="rounded px-3 py-1.5 font-medium text-[#6b5f57] hover:bg-brand-light hover:text-brand"
              active-class="!bg-brand-light !text-brand"
            >
              <i class="fa-solid fa-chart-simple" /> Tableau de bord
            </NuxtLink>
            <NuxtLink
              v-if="estAdmin" to="/suivi"
              class="rounded px-3 py-1.5 font-medium text-[#6b5f57] hover:bg-brand-light hover:text-brand"
              active-class="!bg-brand-light !text-brand"
            >
              <i class="fa-solid fa-chart-line" /> Suivi
            </NuxtLink>
            <NuxtLink
              to="/compte" class="hidden px-2 text-[#a8998a] hover:text-brand sm:inline"
              :title="(user?.email || '') + ' — ' + (user?.filiereNom || '')"
            >
              <i class="fa-solid fa-user text-brand" /> {{ user?.nom }}
            </NuxtLink>
            <button
              class="rounded px-3 py-1.5 font-medium text-[#6b5f57] hover:bg-brand-light hover:text-brand"
              @click="seDeconnecter"
            >
              Déconnexion
            </button>
          </template>
          <template v-else>
            <NuxtLink
              to="/connexion"
              class="rounded px-3 py-1.5 font-medium text-[#6b5f57] hover:bg-brand-light hover:text-brand"
              active-class="!bg-brand-light !text-brand"
            >
              Connexion
            </NuxtLink>
            <NuxtLink to="/inscription" class="rounded bg-brand px-3 py-1.5 font-semibold text-white hover:bg-brand-dark">
              S'inscrire
            </NuxtLink>
          </template>
        </nav>
      </div>
    </header>

    <main class="mx-auto w-full max-w-5xl flex-1 px-4 py-8">
      <slot />
    </main>

    <footer class="border-t border-rule bg-white">
      <div class="mx-auto max-w-5xl px-4 py-6 text-center text-sm text-[#a8998a]">
        Chahd — réviser et réussir le rattrapage du Bac scientifique
      </div>
    </footer>
  </div>
</template>
