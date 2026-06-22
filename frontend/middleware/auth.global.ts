// Verrou global : le contenu du site exige une connexion.
// Pages publiques : l'accueil (/), la connexion et l'inscription.
export default defineNuxtRouteMiddleware((to) => {
  const auth = ['/connexion', '/inscription']
  const { estConnecte } = useAuth()

  // Accueil : page d'accueil publique, toujours accessible.
  if (to.path === '/') return

  // Pages d'authentification : libres ; un utilisateur déjà connecté est renvoyé ailleurs.
  if (auth.includes(to.path)) {
    if (estConnecte.value) {
      const cible = (to.query.redirect as string) || '/'
      return navigateTo(auth.includes(cible) ? '/' : cible)
    }
    return
  }

  // Toute autre page : connexion obligatoire (avec mémorisation de la cible).
  if (!estConnecte.value) {
    return navigateTo({
      path: '/connexion',
      query: to.fullPath && to.fullPath !== '/' ? { redirect: to.fullPath } : {},
    })
  }
})
