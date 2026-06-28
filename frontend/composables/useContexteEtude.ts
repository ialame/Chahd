// Contexte d'étude partagé : ce que l'élève regarde (matière / chapitre / type / contenu).
// Renseigné par la page matière, lu par le panneau AXIOM pour un coup de pouce ciblé.

export interface ContexteEtude {
  matiere: string | null      // slug
  matiereNom: string | null
  chapitre: string | null     // titre / slug du chapitre ouvert
  type: string | null         // cours | exercices | problemes | fiches | bac | annale | qcm
  titre: string | null        // titre de l'élément ouvert
  extrait: string | null      // contenu actuellement affiché (texte, tronqué)
}

const vide = (): ContexteEtude => ({
  matiere: null, matiereNom: null, chapitre: null, type: null, titre: null, extrait: null,
})

export const useContexteEtude = () => {
  const contexte = useState<ContexteEtude>('etude_contexte', vide)

  function set(patch: Partial<ContexteEtude>) {
    contexte.value = { ...contexte.value, ...patch }
  }
  function reset() {
    contexte.value = vide()
  }

  return { contexte, set, reset }
}
