// Macros LaTeX passées à KaTeX — alignées sur la plateforme AnalyseNumériqueIA
// (cf. mathMarkdown.ts) + macros du livre de Maths (preamble.tex).
export const katexMacros: Record<string, string> = {
  // Ensembles
  '\\R': '\\mathbb{R}', '\\N': '\\mathbb{N}', '\\Z': '\\mathbb{Z}',
  '\\Q': '\\mathbb{Q}', '\\C': '\\mathbb{C}', '\\K': '\\mathbb{K}',
  '\\Cnum': '\\mathbb{C}', '\\Eesp': '\\mathbb{E}', '\\Pprob': '\\mathbb{P}',
  // Différentielles / unités
  '\\dd': '\\mathrm{d}', '\\de': '\\mathrm{d}', '\\iud': '\\mathrm{i}',
  '\\e': '\\mathrm{e}',
  // Vecteurs
  '\\vec': '\\overrightarrow{#1}', '\\vc': '\\overrightarrow{#1}',
  // Notation marocaine des combinaisons : \binom{n}{p} = C_n^p
  '\\binom': '{C_{#1}^{#2}}',
  // Doubles crochets (stmaryrd)
  '\\llbracket': '[\\![', '\\rrbracket': ']\\!]'
}
