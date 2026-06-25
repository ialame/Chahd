<script setup lang="ts">
const { user, changerFiliere } = useAuth()

const filieres = [
  { slug: 'sciences-physiques', nom: 'Sciences Physiques', desc: 'Maths, PC, SVT + Philo, Français, Anglais' },
  { slug: 'sciences-mathematiques-a', nom: 'Sciences Mathématiques A', desc: 'Maths, PC, SVT, Informatique + Philo, Français, Anglais' },
  { slug: 'sciences-mathematiques-b', nom: 'Sciences Mathématiques B', desc: "Maths, PC, Sciences de l'Ingénieur, Informatique + Philo, Français, Anglais" },
]

const enregistre = ref(false)
const erreur = ref('')

async function choisir(slug: string) {
  if (slug === user.value?.filiere) return
  erreur.value = ''
  try {
    await changerFiliere(slug)
    enregistre.value = true
    setTimeout(() => (enregistre.value = false), 2500)
  } catch {
    erreur.value = 'Changement impossible. Réessaie.'
  }
}
</script>

<template>
  <div class="mx-auto max-w-2xl space-y-6">
    <div>
      <h1 class="text-2xl font-bold text-ink">Mon compte</h1>
      <p class="text-sm text-[#a8998a]">{{ user?.nom }} · {{ user?.email }}</p>
    </div>

    <section class="card space-y-4">
      <div>
        <h2 class="font-bold text-ink">Ma filière</h2>
        <p class="text-sm text-[#6b5f57]">Tu ne vois que les matières de ta filière. Tu peux en changer à tout moment.</p>
      </div>

      <div class="grid gap-3 sm:grid-cols-2">
        <button
          v-for="f in filieres" :key="f.slug" type="button"
          class="rounded-xl border px-4 py-3 text-left transition"
          :class="user?.filiere === f.slug ? 'border-brand bg-brand-light ring-1 ring-brand' : 'border-rule hover:bg-paper'"
          @click="choisir(f.slug)"
        >
          <span class="flex items-center justify-between">
            <span class="font-semibold text-ink">{{ f.nom }}</span>
            <i v-if="user?.filiere === f.slug" class="fa-solid fa-circle-check text-brand" />
          </span>
          <span class="mt-1 block text-xs text-[#a8998a]">{{ f.desc }}</span>
        </button>
      </div>

      <p v-if="enregistre" class="rounded-lg bg-emerald-50 px-3 py-2 text-sm text-emerald-700">
        <i class="fa-solid fa-check mr-1" /> Filière mise à jour.
      </p>
      <p v-if="erreur" class="rounded-lg bg-red-50 px-3 py-2 text-sm text-red-700">{{ erreur }}</p>
    </section>
  </div>
</template>
