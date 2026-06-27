<script setup lang="ts">
const { user, changerFiliere } = useAuth()

const filieres = [
  { slug: 'tronc-commun-sciences', nom: 'Tronc Commun Sciences', desc: 'Maths, PC, SVT', niveau: 'Tronc Commun' },
  { slug: '1bac-sciences-experimentales', nom: '1 Bac Sciences Expérimentales', desc: 'Examen régional : Français, Histoire-Géographie', niveau: '1ère année Bac' },
  { slug: '1bac-sciences-mathematiques', nom: '1 Bac Sciences Mathématiques', desc: 'Examen régional : Français, Histoire-Géographie', niveau: '1ère année Bac' },
  { slug: 'sciences-physiques', nom: 'Sciences Physiques', desc: 'Maths, PC, SVT + Philo, Français, Anglais', niveau: '2ème année Bac' },
  { slug: 'sciences-mathematiques-a', nom: 'Sciences Mathématiques A', desc: 'Maths, PC, SVT, Informatique + Philo, Français, Anglais', niveau: '2ème année Bac' },
  { slug: 'sciences-mathematiques-b', nom: 'Sciences Mathématiques B', desc: "Maths, PC, Sciences de l'Ingénieur, Informatique + Philo, Français, Anglais", niveau: '2ème année Bac' },
  { slug: 'sciences-technologies-electriques', nom: 'Sciences et Technologies Électriques', desc: "Sciences de l'Ingénieur (génie électrique), Maths, PC…", niveau: '2ème année Bac' },
  { slug: 'sciences-technologies-mecaniques', nom: 'Sciences et Technologies Mécaniques', desc: "Sciences de l'Ingénieur (génie mécanique), Maths, PC…", niveau: '2ème année Bac' },
]
const niveaux = ['Tronc Commun', '1ère année Bac', '2ème année Bac']

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

      <div v-for="niveau in niveaux" :key="niveau" class="space-y-2">
        <p class="text-xs font-bold uppercase tracking-wide text-[#a8998a]">{{ niveau }}</p>
        <div class="grid gap-3 sm:grid-cols-2">
          <button
            v-for="f in filieres.filter(x => x.niveau === niveau)" :key="f.slug" type="button"
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
      </div>

      <p v-if="enregistre" class="rounded-lg bg-emerald-50 px-3 py-2 text-sm text-emerald-700">
        <i class="fa-solid fa-check mr-1" /> Filière mise à jour.
      </p>
      <p v-if="erreur" class="rounded-lg bg-red-50 px-3 py-2 text-sm text-red-700">{{ erreur }}</p>
    </section>
  </div>
</template>
