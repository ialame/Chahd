// Enregistre l'activité de l'élève côté serveur (ouvertures de contenu, QCM).
// Identifiant de visiteur anonyme stocké dans le navigateur.

function visiteurId(): string {
  if (!import.meta.client) return ''
  let v = localStorage.getItem('chahd:visiteur')
  if (!v) {
    v = Math.random().toString(36).slice(2, 10) + Date.now().toString(36).slice(-4)
    localStorage.setItem('chahd:visiteur', v)
  }
  return v
}

export interface ActiviteEvent {
  type?: 'ouverture' | 'quiz'
  matiere?: string
  chapitre?: string
  item?: string
  label?: string
  note?: number
}

export const useActivite = () => {
  const { post } = useApi()

  const track = (e: ActiviteEvent) => {
    if (!import.meta.client) return
    post('/activite', { visiteur: visiteurId(), type: e.type ?? 'ouverture', ...e }).catch(() => {})
  }

  return { track, visiteurId }
}
