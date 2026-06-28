// Voix pour AXIOM via l'API Web Speech du navigateur (gratuite, côté client).
// 3 usages : dictée ponctuelle (bouton micro), mode mains libres (mot de réveil
// « Axiom », façon Alexa) et lecture à voix haute des réponses.
// Tout est dégradable : si le navigateur ne supporte pas, les boutons sont masqués.

export const useVoix = () => {
  const reconnaissanceSupportee = ref(false)
  const syntheseSupportee = ref(false)
  const enEcoute = ref(false)          // dictée ponctuelle active
  const mainsLibres = ref(false)       // mode mot de réveil actif
  const ecouteQuestion = ref(false)    // mains libres : « Axiom » entendu, on capte la question
  // État de lecture partagé (une seule lecture à la fois dans toute l'app).
  const enLecture = useState('voix_en_lecture', () => false)
  const lectureCle = useState<string | null>('voix_lecture_cle', () => null)

  let reco: any = null
  let arretManuel = false
  let attenteRestart = false
  let silenceTimer: any = null
  let recoSerial = 0
  const SILENCE_MS = 3000 // arrêt + envoi auto après ce délai sans parole
  const MOTS_REVEIL = /(axiom[es]?|axium|aksiom)/i

  if (import.meta.client) {
    const SR = (window as any).SpeechRecognition || (window as any).webkitSpeechRecognition
    reconnaissanceSupportee.value = !!SR
    syntheseSupportee.value = 'speechSynthesis' in window
  }

  const getSR = () =>
    import.meta.client ? (window as any).SpeechRecognition || (window as any).webkitSpeechRecognition : null

  // --- Dictée ponctuelle (parler → texte) ---
  // onTexte : texte courant en continu. onFin : appelé après SILENCE_MS de silence
  // (pour envoyer automatiquement).
  function demarrerDictee(
    lang: string,
    onTexte: (texte: string, final: boolean) => void,
    onFin?: (texte: string) => void
  ) {
    const SR = getSR()
    if (!SR) return
    arreterDictee()
    arreterMainsLibres()

    let finalAccum = ''
    let sessionFinal = ''
    let dernierTexte = ''

    const armerSilence = () => {
      if (silenceTimer) clearTimeout(silenceTimer)
      silenceTimer = setTimeout(() => {
        if (!dernierTexte.trim()) return
        arretManuel = true
        try { reco?.stop() } catch { /* ignore */ }
        enEcoute.value = false
        onFin?.(dernierTexte.trim())
      }, SILENCE_MS)
    }

    reco = new SR()
    reco.lang = lang
    reco.interimResults = true
    reco.continuous = true
    reco.onresult = (e: any) => {
      let interim = ''
      let fin = ''
      for (let i = 0; i < e.results.length; i++) {
        const r = e.results[i]
        if (r.isFinal) fin += r[0].transcript
        else interim += r[0].transcript
      }
      sessionFinal = fin
      dernierTexte = (finalAccum + fin + interim).replace(/\s+/g, ' ').trim()
      onTexte(dernierTexte, false)
      armerSilence()
    }
    reco.onend = () => {
      finalAccum = (finalAccum + ' ' + sessionFinal).replace(/\s+/g, ' ').trim() + ' '
      sessionFinal = ''
      if (arretManuel) { enEcoute.value = false; return }
      try { reco.start() } catch { enEcoute.value = false }
    }
    reco.onerror = (e: any) => {
      if (e?.error === 'no-speech' && !arretManuel) return
      enEcoute.value = false
    }
    arretManuel = false
    enEcoute.value = true
    try { reco.start() } catch { enEcoute.value = false }
  }

  function arreterDictee() {
    arretManuel = true
    if (silenceTimer) { clearTimeout(silenceTimer); silenceTimer = null }
    try { reco?.stop() } catch { /* ignore */ }
    enEcoute.value = false
  }

  // --- Mode mains libres (mot de réveil « Axiom », façon Alexa) ---
  // Écoute en permanence ; quand « Axiom » est entendu, capte la question, l'écrit
  // en direct (onTexte), puis l'envoie (onQuestion) après SILENCE_MS de silence.
  function demarrerMainsLibres(
    lang: string,
    onTexte: (texte: string) => void,
    onQuestion: (texte: string) => void
  ) {
    const SR = getSR()
    if (!SR) return
    arreterDictee()
    arreterMainsLibres()
    mainsLibres.value = true

    let phase: 'veille' | 'question' = 'veille'
    let questionBase = ''
    let sessionText = ''
    let wakeOffset = 0
    attenteRestart = false

    const calcQuestion = () =>
      (questionBase + ' ' + sessionText.slice(wakeOffset)).replace(/\s+/g, ' ').trim()

    const armer = () => {
      if (silenceTimer) clearTimeout(silenceTimer)
      silenceTimer = setTimeout(() => {
        if (phase !== 'question') return
        const q = calcQuestion()
        phase = 'veille'
        ecouteQuestion.value = false
        questionBase = ''
        wakeOffset = 0
        attenteRestart = true // ignorer les résultats jusqu'au redémarrage propre de la session
        if (q) onQuestion(q)
        try { reco?.stop() } catch { /* ignore */ }
      }, SILENCE_MS)
    }

    const lancer = () => {
      const serial = ++recoSerial
      reco = new SR()
      reco.lang = lang
      reco.interimResults = true
      reco.continuous = true
      reco.onresult = (e: any) => {
        if (attenteRestart) return
        let t = ''
        for (let i = 0; i < e.results.length; i++) t += e.results[i][0].transcript
        sessionText = t
        if (phase === 'veille') {
          const m = sessionText.match(MOTS_REVEIL)
          if (m && m.index != null) {
            phase = 'question'
            ecouteQuestion.value = true
            wakeOffset = m.index + m[0].length
            questionBase = ''
            onTexte(calcQuestion())
            armer()
          }
        } else {
          onTexte(calcQuestion())
          armer()
        }
      }
      reco.onerror = (e: any) => {
        if (e?.error === 'not-allowed' || e?.error === 'service-not-allowed') arreterMainsLibres()
      }
      reco.onend = () => {
        if (phase === 'question' && !attenteRestart) {
          questionBase = (questionBase + ' ' + sessionText.slice(wakeOffset)).replace(/\s+/g, ' ').trim()
        }
        sessionText = ''
        wakeOffset = 0
        attenteRestart = false
        // relance tant que le mode est actif (et que cette session est la plus récente)
        if (mainsLibres.value && serial === recoSerial) { try { reco.start() } catch { /* ignore */ } }
      }
      try { reco.start() } catch { /* ignore */ }
    }
    lancer()
  }

  function arreterMainsLibres() {
    recoSerial++ // invalide les onend en attente
    mainsLibres.value = false
    ecouteQuestion.value = false
    if (silenceTimer) { clearTimeout(silenceTimer); silenceTimer = null }
    try { reco?.stop() } catch { /* ignore */ }
  }

  // --- Lecture (texte → parole) ---
  function simplifieMath(m: string): string {
    return m
      .replace(/\\times|\\cdot/g, ' fois ')
      .replace(/\\frac\s*\{([^{}]*)\}\s*\{([^{}]*)\}/g, ' $1 sur $2 ')
      .replace(/\\sqrt\s*\{([^{}]*)\}/g, ' racine de $1 ')
      .replace(/\\[a-zA-Z]+/g, ' ')
      .replace(/\^/g, ' puissance ')
      .replace(/_/g, ' indice ')
      .replace(/[{}]/g, ' ')
      .replace(/\s+/g, ' ')
      .trim()
  }

  function nettoyerPourLecture(texte: string): string {
    return texte
      .replace(/```[\s\S]*?```/g, ' ')
      .replace(/\$\$([\s\S]*?)\$\$/g, (_m, x) => ' ' + simplifieMath(x) + ' ')
      .replace(/\$([^$\n]+?)\$/g, (_m, x) => ' ' + simplifieMath(x) + ' ')
      .replace(/[*_`#>]/g, '')
      .replace(/\s+/g, ' ')
      .trim()
  }

  function lire(cle: string, texte: string, lang: string) {
    if (!import.meta.client || !('speechSynthesis' in window)) return
    window.speechSynthesis.cancel()
    const u = new SpeechSynthesisUtterance(nettoyerPourLecture(texte))
    u.lang = lang
    u.rate = 1
    u.onend = () => { enLecture.value = false; lectureCle.value = null }
    u.onerror = () => { enLecture.value = false; lectureCle.value = null }
    enLecture.value = true
    lectureCle.value = cle
    window.speechSynthesis.speak(u)
  }

  function arreterLecture() {
    if (import.meta.client && 'speechSynthesis' in window) window.speechSynthesis.cancel()
    enLecture.value = false
    lectureCle.value = null
  }

  return {
    reconnaissanceSupportee, syntheseSupportee, enEcoute, mainsLibres, ecouteQuestion,
    enLecture, lectureCle,
    demarrerDictee, arreterDictee, demarrerMainsLibres, arreterMainsLibres,
    lire, arreterLecture,
  }
}
