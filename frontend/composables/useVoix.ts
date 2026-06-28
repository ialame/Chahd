// Voix pour AXIOM via l'API Web Speech du navigateur (gratuite, côté client) :
// dictée (parler → texte) et lecture à voix haute (texte → parole).
// Tout est dégradable : si le navigateur ne supporte pas, les boutons sont masqués.

export const useVoix = () => {
  const reconnaissanceSupportee = ref(false)
  const syntheseSupportee = ref(false)
  const enEcoute = ref(false)
  // État de lecture partagé (une seule lecture à la fois dans toute l'app).
  const enLecture = useState('voix_en_lecture', () => false)
  const lectureCle = useState<string | null>('voix_lecture_cle', () => null)

  let reco: any = null
  let arretManuel = false

  if (import.meta.client) {
    const SR = (window as any).SpeechRecognition || (window as any).webkitSpeechRecognition
    reconnaissanceSupportee.value = !!SR
    syntheseSupportee.value = 'speechSynthesis' in window
  }

  // --- Dictée (speech → texte) ---
  function demarrerDictee(lang: string, onTexte: (texte: string, final: boolean) => void) {
    if (!import.meta.client) return
    const SR = (window as any).SpeechRecognition || (window as any).webkitSpeechRecognition
    if (!SR) return
    arreterDictee()
    reco = new SR()
    reco.lang = lang
    reco.interimResults = true
    reco.continuous = true // capte toute la phrase, pas seulement le premier mot
    reco.onresult = (e: any) => {
      let txt = ''
      for (let i = 0; i < e.results.length; i++) txt += e.results[i][0].transcript
      onTexte(txt, e.results[e.results.length - 1].isFinal)
    }
    // En continu, certains navigateurs coupent après un silence : on relance tant
    // que l'élève n'a pas appuyé sur stop.
    reco.onend = () => {
      if (arretManuel) { enEcoute.value = false; return }
      try { reco.start() } catch { enEcoute.value = false }
    }
    reco.onerror = (e: any) => {
      if (e?.error === 'no-speech' && !arretManuel) return // ignore les silences
      enEcoute.value = false
    }
    arretManuel = false
    enEcoute.value = true
    try { reco.start() } catch { enEcoute.value = false }
  }

  function arreterDictee() {
    arretManuel = true
    try { reco?.stop() } catch { /* ignore */ }
    enEcoute.value = false
  }

  // --- Lecture (texte → parole) ---
  function simplifieMath(m: string): string {
    return m
      .replace(/\\times|\\cdot/g, ' fois ')
      .replace(/\\frac\s*\{([^{}]*)\}\s*\{([^{}]*)\}/g, ' $1 sur $2 ')
      .replace(/\\sqrt\s*\{([^{}]*)\}/g, ' racine de $1 ')
      .replace(/\\[a-zA-Z]+/g, ' ')   // autres commandes LaTeX
      .replace(/\^/g, ' puissance ')
      .replace(/_/g, ' indice ')
      .replace(/[{}]/g, ' ')
      .replace(/\s+/g, ' ')
      .trim()
  }

  function nettoyerPourLecture(texte: string): string {
    return texte
      .replace(/```[\s\S]*?```/g, ' ')                                   // blocs de code
      .replace(/\$\$([\s\S]*?)\$\$/g, (_m, x) => ' ' + simplifieMath(x) + ' ')
      .replace(/\$([^$\n]+?)\$/g, (_m, x) => ' ' + simplifieMath(x) + ' ') // maths en ligne
      .replace(/[*_`#>]/g, '')                                           // markdown
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
    reconnaissanceSupportee, syntheseSupportee, enEcoute, enLecture, lectureCle,
    demarrerDictee, arreterDictee, lire, arreterLecture,
  }
}
