<script setup lang="ts">
const props = defineProps<{ leconId: number; hasFiches?: boolean }>()
const { get, put } = useApi()
const { estConnecte } = useAuth()

const statut = ref<string | null>(null)
const busy = ref(false)

async function charger() {
  if (!estConnecte.value) return
  try {
    const list = await get<{ leconId: number; statut: string }[]>('/me/progression')
    statut.value = list.find(p => p.leconId === props.leconId)?.statut ?? null
  } catch { statut.value = null }
}
onMounted(charger)
watch(() => props.leconId, charger)

async function marquer(s: string) {
  if (busy.value) return
  busy.value = true
  const nouveau = statut.value === s ? null : s
  try {
    await put(`/me/progression/lecon/${props.leconId}`, { statut: nouveau })
    statut.value = nouveau
  } finally {
    busy.value = false
  }
}
</script>

<template>
  <div v-if="estConnecte" class="flex flex-wrap items-center gap-2 border-b border-rule pb-3 text-sm">
    <button
      class="rounded border px-3 py-1.5 font-medium transition-colors"
      :class="statut === 'LU' ? 'border-theo/40 bg-theo/10 text-theo' : 'border-rule text-[#6b5f57] hover:bg-paper'"
      @click="marquer('LU')"
    >
      <i class="fa-solid fa-check" /> {{ statut === 'LU' ? 'Lu' : 'Marquer comme lu' }}
    </button>
    <button
      class="rounded border px-3 py-1.5 font-medium transition-colors"
      :class="statut === 'A_REVOIR' ? 'border-amber-300 bg-amber-50 text-amber-700' : 'border-rule text-[#6b5f57] hover:bg-paper'"
      @click="marquer('A_REVOIR')"
    >
      <i class="fa-solid fa-flag" /> À revoir
    </button>
    <NuxtLink
      v-if="hasFiches"
      :to="`/reviser?lecon=${leconId}`"
      class="ml-auto rounded bg-brand px-3 py-1.5 font-semibold text-white hover:bg-brand-dark"
    >
      <i class="fa-solid fa-layer-group" /> Réviser ces fiches
    </NuxtLink>
  </div>
</template>
