// Enregistre chaque page visitée (en plus du suivi détaillé de l'explorateur).
// Client uniquement.
export default defineNuxtPlugin(() => {
  const router = useRouter()
  const { track } = useActivite()

  const LABELS: Record<string, string> = {
    '/': 'Accueil',
    '/matieres': 'Matières',
    '/annales': 'Annales (liste)',
    '/exercices': 'Exercices (liste)',
    '/problemes': 'Problèmes (liste)',
    '/planning': 'Planning'
  }

  const fire = (path: string) => {
    if (!path || path === '/suivi') return // on ne trace pas la page de suivi
    track({ type: 'page', item: 'page', label: LABELS[path] || path })
  }

  // Page initiale puis chaque navigation.
  fire(router.currentRoute.value.path)
  router.afterEach((to, from) => {
    if (to.path !== from.path) fire(to.path)
  })
})
