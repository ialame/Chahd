// Charge la progression sauvegardée dès le démarrage côté client.
export default defineNuxtPlugin(() => {
  const { load } = useProgression()
  load()
})
