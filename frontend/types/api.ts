// Types miroir des DTO exposés par l'API Spring Boot.

export interface MatiereDto {
  id: number
  slug: string
  nom: string
  coefficient: number
  description: string | null
  couleur: string | null
  icone: string | null
  ordre: number
  nbChapitres: number
}

export interface ChapitreSummaryDto {
  id: number
  slug: string
  titre: string
  resume: string | null
  ordre: number
  nbFiches: number
  nbQuiz: number
}

export interface AnnaleDto {
  id: number
  titre: string
  annee: number
  session: 'NORMALE' | 'RATTRAPAGE'
  sujetUrl: string | null
  corrigeUrl: string | null
  matiereSlug: string
  matiereNom: string
  aContenu: boolean
}

export interface AnnaleContenuDto {
  id: number
  titre: string
  sujetUrl: string | null
  corrigeUrl: string | null
  sujet: string | null
  corrige: string | null
}

export interface LeconDto {
  id: number
  slug: string
  titre: string
  ordre: number
  aContenu: boolean
  aExercices: boolean
  aProblemes: boolean
  aFiches: boolean
  quizId: number | null
  aBac: boolean
}

export interface FlashcardDto {
  question: string
  reponse: string
}

export interface ExoBacDto {
  annee: number
  session: string
  numero: string
  titre: string
  enonce: string
  corrige: string
  extrait: boolean
}

export interface LeconContenuDto {
  id: number
  titre: string
  matiereSlug: string
  contenu: string
}

export interface MatiereDetailDto {
  id: number
  slug: string
  nom: string
  coefficient: number
  description: string | null
  couleur: string | null
  icone: string | null
  chapitres: ChapitreSummaryDto[]
  annales: AnnaleDto[]
}

export interface FicheDto {
  id: number
  titre: string
  contenu: string
  ordre: number
}

export interface QuizSummaryDto {
  id: number
  titre: string
  description: string | null
  nbQuestions: number
}

export interface ChapitreDetailDto {
  id: number
  slug: string
  titre: string
  resume: string | null
  ordre: number
  matiereSlug: string
  matiereNom: string
  couleur: string | null
  fiches: FicheDto[]
  quizzes: QuizSummaryDto[]
}

export interface ChoixDto {
  id: number
  texte: string
  ordre: number
}

export interface QuestionDto {
  id: number
  enonce: string
  ordre: number
  choix: ChoixDto[]
}

export interface QuizDto {
  id: number
  titre: string
  description: string | null
  questions: QuestionDto[]
}

export interface QuestionResultDto {
  questionId: number
  correcte: boolean
  bonsChoix: number[]
  choixSelectionnes: number[]
  explication: string | null
}

export interface QuizResultDto {
  quizId: number
  score: number
  total: number
  noteSur20: number
  details: QuestionResultDto[]
}
