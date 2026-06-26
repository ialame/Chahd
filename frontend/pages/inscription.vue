<script setup lang="ts">
const { inscription } = useAuth()
const router = useRouter()
const route = useRoute()

const nom = ref('')
const email = ref('')
const motDePasse = ref('')
const filiere = ref('sciences-physiques')
const erreur = ref('')
const loading = ref(false)

const filieres = [
  { slug: 'tronc-commun-sciences', nom: 'Tronc Commun Sciences', desc: 'Maths, PC, SVT', niveau: 'Tronc Commun' },
  { slug: '1bac-sciences-experimentales', nom: '1 Bac Sciences Expérimentales', desc: 'Régional : Français, Histoire-Géo', niveau: '1ère année Bac' },
  { slug: '1bac-sciences-mathematiques', nom: '1 Bac Sciences Mathématiques', desc: 'Régional : Français, Histoire-Géo', niveau: '1ère année Bac' },
  { slug: 'sciences-physiques', nom: 'Sciences Physiques', desc: 'Maths, PC, SVT…', niveau: '2ème année Bac' },
  { slug: 'sciences-mathematiques-a', nom: 'Sciences Mathématiques A', desc: 'Maths, PC, SVT, Informatique…', niveau: '2ème année Bac' },
  { slug: 'sciences-mathematiques-b', nom: 'Sciences Mathématiques B', desc: "Maths, PC, Sciences de l'Ingénieur, Informatique…", niveau: '2ème année Bac' },
]
const niveaux = ['Tronc Commun', '1ère année Bac', '2ème année Bac']

async function soumettre() {
  erreur.value = ''
  if (motDePasse.value.length < 6) {
    erreur.value = 'Le mot de passe doit faire au moins 6 caractères.'
    return
  }
  loading.value = true
  try {
    await inscription(email.value, motDePasse.value, nom.value, filiere.value)
    await router.push((route.query.redirect as string) || '/')
  } catch (e: any) {
    const code = e?.statusCode || e?.response?.status
    erreur.value =
      e?.data?.message ||
      (code === 409
        ? 'Un compte existe déjà avec cet email.'
        : code === 400
          ? 'Vérifie les champs (email valide, mot de passe ≥ 6 caractères).'
          : 'Inscription impossible. Réessaye.')
  } finally {
    loading.value = false
  }
}
</script>

<template>
  <div class="mx-auto max-w-md">
    <div class="card space-y-5">
      <div class="text-center">
        <h1 class="text-2xl font-bold text-ink">Créer un compte</h1>
        <p class="text-sm text-[#a8998a]">Ton avancement sera enregistré et suivi.</p>
      </div>

      <form class="space-y-4" @submit.prevent="soumettre">
        <div>
          <label class="mb-1 block text-sm font-semibold text-[#6b5f57]">Prénom / Nom</label>
          <input
            v-model="nom" type="text" required maxlength="120"
            class="w-full rounded-lg border border-rule px-3 py-2 focus:border-brand focus:outline-none focus:ring-1 focus:ring-brand"
            placeholder="Sara B."
          >
        </div>
        <div>
          <label class="mb-1 block text-sm font-semibold text-[#6b5f57]">Email</label>
          <input
            v-model="email" type="email" required autocomplete="email"
            class="w-full rounded-lg border border-rule px-3 py-2 focus:border-brand focus:outline-none focus:ring-1 focus:ring-brand"
            placeholder="ton@email.com"
          >
        </div>
        <div>
          <label class="mb-1 block text-sm font-semibold text-[#6b5f57]">Mot de passe</label>
          <input
            v-model="motDePasse" type="password" required minlength="6" autocomplete="new-password"
            class="w-full rounded-lg border border-rule px-3 py-2 focus:border-brand focus:outline-none focus:ring-1 focus:ring-brand"
            placeholder="au moins 6 caractères"
          >
        </div>

        <div>
          <label class="mb-1 block text-sm font-semibold text-[#6b5f57]">Ta filière</label>
          <div v-for="niveau in niveaux" :key="niveau" class="mb-2">
            <p class="mb-1 text-[11px] font-bold uppercase tracking-wide text-[#a8998a]">{{ niveau }}</p>
            <div class="grid grid-cols-2 gap-2">
              <button
                v-for="f in filieres.filter(x => x.niveau === niveau)" :key="f.slug" type="button"
                class="rounded-lg border px-3 py-2 text-left transition"
                :class="filiere === f.slug ? 'border-brand bg-brand-light ring-1 ring-brand' : 'border-rule hover:bg-paper'"
                @click="filiere = f.slug"
              >
                <span class="block text-sm font-semibold text-ink">{{ f.nom }}</span>
                <span class="block text-xs text-[#a8998a]">{{ f.desc }}</span>
              </button>
            </div>
          </div>
          <p class="mt-1 text-xs text-[#a8998a]">Tu ne verras que les matières de ta filière. Modifiable plus tard dans « Mon compte ».</p>
        </div>

        <p v-if="erreur" class="rounded-lg bg-red-50 px-3 py-2 text-sm text-red-700">{{ erreur }}</p>

        <button
          type="submit" :disabled="loading"
          class="w-full rounded-lg bg-brand px-4 py-2.5 font-semibold text-white hover:bg-brand-dark disabled:opacity-60"
        >
          {{ loading ? 'Création…' : 'Créer mon compte' }}
        </button>
      </form>

      <p class="text-center text-sm text-[#a8998a]">
        Déjà un compte ?
        <NuxtLink to="/connexion" class="font-semibold text-brand hover:underline">Se connecter</NuxtLink>
      </p>
    </div>
  </div>
</template>
