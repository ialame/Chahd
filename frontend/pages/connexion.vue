<script setup lang="ts">
const { connexion } = useAuth()
const router = useRouter()
const route = useRoute()

const email = ref('')
const motDePasse = ref('')
const erreur = ref('')
const loading = ref(false)

async function soumettre() {
  erreur.value = ''
  loading.value = true
  try {
    await connexion(email.value, motDePasse.value)
    await router.push((route.query.redirect as string) || '/')
  } catch (e: any) {
    const code = e?.statusCode || e?.response?.status
    erreur.value =
      e?.data?.message || (code === 401 ? 'Email ou mot de passe incorrect.' : 'Connexion impossible. Réessayez.')
  } finally {
    loading.value = false
  }
}
</script>

<template>
  <div class="mx-auto max-w-md">
    <div class="card space-y-5">
      <div class="text-center">
        <h1 class="text-2xl font-bold text-ink">Connexion</h1>
        <p class="text-sm text-[#a8998a]">Accède à ton suivi personnel.</p>
      </div>

      <form class="space-y-4" @submit.prevent="soumettre">
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
            v-model="motDePasse" type="password" required autocomplete="current-password"
            class="w-full rounded-lg border border-rule px-3 py-2 focus:border-brand focus:outline-none focus:ring-1 focus:ring-brand"
            placeholder="••••••••"
          >
        </div>

        <p v-if="erreur" class="rounded-lg bg-red-50 px-3 py-2 text-sm text-red-700">{{ erreur }}</p>

        <button
          type="submit" :disabled="loading"
          class="w-full rounded-lg bg-brand px-4 py-2.5 font-semibold text-white hover:bg-brand-dark disabled:opacity-60"
        >
          {{ loading ? 'Connexion…' : 'Se connecter' }}
        </button>
      </form>

      <p class="text-center text-sm text-[#a8998a]">
        Pas encore de compte ?
        <NuxtLink to="/inscription" class="font-semibold text-brand hover:underline">Créer un compte</NuxtLink>
      </p>
    </div>
  </div>
</template>
