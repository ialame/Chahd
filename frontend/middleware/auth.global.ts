// Verrou global : l'accès au site exige une connexion.
// Seules /connexion et /inscription sont accessibles sans compte.
export default defineNuxtRouteMiddleware((to) => {
  const publiques = ['/connexion', '/inscription']
  const { estConnecte } = useAuth()

  // Pages d'authentification : accessibles librement.
  if (publiques.includes(to.path)) {
    // Un utilisateur déjà connecté n'a rien à y faire → accueil (ou cible mémorisée).
    if (estConnecte.value) {
      const cible = (to.query.redirect as string) || '/'
      return navigateTo(publiques.includes(cible) ? '/' : cible)
    }
    return
  }

  // Toute autre page : connexion obligatoire.
  if (!estConnecte.value) {
    return navigateTo({
      path: '/connexion',
      query: to.fullPath && to.fullPath !== '/' ? { redirect: to.fullPath } : {},
    })
  }
})
