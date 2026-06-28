// Logique du tuteur IA AXIOM : profil persisté (serveur) + historique en mémoire (client).
import type { AxiomMessage, AxiomProfilDto, AxiomChatResponse } from '~/types/api'

export const useAxiom = () => {
  const { get, post } = useApi()

  // État partagé (survit aux changements d'onglet Cours/Progression).
  const profil = useState<AxiomProfilDto | null>('axiom_profil', () => null)
  const messages = useState<AxiomMessage[]>('axiom_messages', () => [])
  const stats = useState('axiom_stats', () => ({ exercices: 0, reussites: 0 }))
  const loading = ref(false)

  /** Charge (ou crée côté serveur) le profil de l'élève connecté. */
  async function loadProfil() {
    try {
      profil.value = await get<AxiomProfilDto>('/axiom/profil')
    } catch {
      profil.value = null
    }
  }

  /** Envoie un message à AXIOM et ajoute sa réponse à l'historique. */
  async function sendMessage(content: string) {
    const texte = content.trim()
    if (!texte || loading.value) return
    messages.value.push({ role: 'user', content: texte })
    loading.value = true
    try {
      const r = await post<AxiomChatResponse>('/axiom/chat', {
        matiere: profil.value?.matiere ?? null,
        messages: messages.value.slice(-20), // 20 derniers max (coût + fenêtre de contexte)
      })
      messages.value.push({ role: 'assistant', content: r.reply })
      if (r.isExercice) stats.value.exercices++
      if (r.isReussite) stats.value.reussites++
      profil.value = r.profil
    } catch (e: any) {
      const code = e?.statusCode ?? e?.response?.status ?? e?.status
      messages.value.push({
        role: 'assistant',
        content: code === 503
          ? "⚠️ AXIOM n'est pas encore activé sur ce serveur. Réessaie plus tard."
          : '⚠️ Erreur de connexion. Réessaie dans un instant.',
      })
    } finally {
      loading.value = false
    }
  }

  /** Démarre une session sur une matière : réinitialise et envoie le message d'accueil. */
  async function choisirMatiere(slug: string, nom: string) {
    if (profil.value) profil.value.matiere = slug
    messages.value = []
    stats.value = { exercices: 0, reussites: 0 }
    await sendMessage(`Bonjour AXIOM ! Je voudrais travailler en ${nom} aujourd'hui.`)
  }

  /** Revient à l'écran de choix de matière. */
  function changerMatiere() {
    if (profil.value) profil.value.matiere = null
    messages.value = []
  }

  return { profil, messages, loading, stats, loadProfil, sendMessage, choisirMatiere, changerMatiere }
}
