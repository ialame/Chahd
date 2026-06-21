// Restaure le profil utilisateur depuis le jeton au démarrage (SSR puis hydraté côté client).
export default defineNuxtPlugin(async () => {
  const { user, rafraichir } = useAuth()
  if (!user.value) {
    await rafraichir()
  }
})
