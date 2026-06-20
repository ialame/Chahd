// Moteur de rendu REPRIS de la plateforme AnalyseNumériqueIA
// (platform/frontend/app/pages/playground.vue → parseMarkdown), adapté à Chahd :
//  - KaTeX importé (SSR-safe) au lieu de window.katex
//  - macros du livre de Maths ajoutées (\binom -> C_n^p, \Cnum, ...)
//  - carte « Méthode » ajoutée (utilisée par le livre)
//  - partie TikZ/SVG/Prism retirée (figures en placeholder côté conversion)
import katex from 'katex'

const MACROS: Record<string, string> = {
  '\\R': '\\mathbb{R}', '\\C': '\\mathbb{C}', '\\N': '\\mathbb{N}',
  '\\Z': '\\mathbb{Z}', '\\Q': '\\mathbb{Q}', '\\K': '\\mathbb{K}',
  '\\Cnum': '\\mathbb{C}', '\\Eesp': '\\mathbb{E}', '\\Pprob': '\\mathbb{P}',
  '\\de': '\\mathrm{d}', '\\dd': '\\mathrm{d}', '\\iud': '\\mathrm{i}',
  '\\ud': '\\,\\mathrm{d}', '\\e': '\\mathrm{e}',
  '\\vec': '\\overrightarrow{#1}', '\\vc': '\\overrightarrow{#1}',
  '\\dx': '\\,\\mathrm{d}x', '\\ii': '\\vec{\\imath}', '\\jj': '\\vec{\\jmath}', '\\kk': '\\vec{k}',
  // Notation marocaine des combinaisons : \binom{n}{p} = C_n^p (entre accolades
  // pour qu'un exposant suivant s'applique au groupe : \binom{4}{1}^3)
  '\\binom': '{C_{#1}^{#2}}',
  '\\llbracket': '[\\![', '\\rrbracket': ']\\!]',
  '\\degree': '^\\circ', '\\norme': '\\left\\lVert #1 \\right\\rVert',
  '\\abs': '\\left| #1 \\right|'
}

const CONTENT = '<div class="text-gray-700 leading-relaxed font-sans text-xs select-text">'

export function parseMarkdown(text: string, hardBreaks = false): string {
  if (!text) return ''
  try {
    let p = text

    // 1. Commentaires LaTeX
    p = p.replace(/^\s*%\s*.*$/gm, '')

    // 2. Figures TikZ / pgfplots -> placeholder (Chahd ne compile pas TikZ)
    p = p.replace(/```tikz[\s\S]*?```/gi, '')
    p = p.replace(/\\begin\{tikzpicture\}[\s\S]*?\\end\{tikzpicture\}/gi, '*[Figure — disponible dans le PDF du livre]*')
    p = p.replace(/\\begin\{axis\}[\s\S]*?\\end\{axis\}/gi, '')

    // 3. Tableaux LaTeX -> table HTML (booktabs)
    p = p.replace(/\\begin\{tabular\}(?:\[.*?\])?\{((?:[^{}]|\{[^{}]*\})*)\}([\s\S]*?)\\end\{tabular\}/gi,
      (_m, spec, body) => convertTabular(spec, body))

    // 4. Environnements -> cartes « Maths++ »
    p = p.replace(/\\begin\{important\}/gis,
      '<div class="p-5 rounded-2xl bg-orange-50 border border-orange-200 my-6 shadow-sm"><h4 class="text-orange-700 font-bold mb-3 flex items-center text-sm"><i class="fa-solid fa-circle-exclamation mr-2 text-base"></i>Important</h4>' + CONTENT)
    p = p.replace(/\\end\{important\}/gis, '</div></div>')

    p = p.replace(/\\begin\{warning\}/gis,
      '<div style="background:#FCEBEB;border:1px solid #F2C9C9;border-left:3px solid #B91C1C" class="flex gap-3 rounded-[10px] px-[18px] py-3.5 my-[18px]"><i class="fa-solid fa-triangle-exclamation" style="color:#B91C1C;font-size:17px;flex:none;margin-top:2px"></i><div class="flex-1"><div style="color:#B91C1C" class="font-extrabold uppercase tracking-wide text-[13px] mb-1">Attention</div>' + CONTENT)
    p = p.replace(/\\end\{warning\}/gis, '</div></div></div>')

    p = p.replace(/\\begin\{tcolorbox\}\[[^\]]*?title=\{([^}]*)\}[^\]]*\]/gis,
      '<div class="p-5 rounded-2xl bg-sky-50 border border-sky-200 my-6 shadow-sm"><h4 class="text-sky-800 font-bold mb-3 flex items-center text-sm"><i class="fa-solid fa-box-archive mr-2 text-base"></i>$1</h4>' + CONTENT)
    p = p.replace(/\\begin\{tcolorbox\}(\[[^\]]*\])?/gis,
      '<div class="p-5 rounded-2xl bg-sky-50 border border-sky-200 my-6 shadow-sm">' + CONTENT)
    p = p.replace(/\\end\{tcolorbox\}/gis, '</div></div>')

    // Définition — carte bordée, liseré ardoise
    p = p.replace(/\\begin\{definition\}\[(.*?)\]/gis,
      '<div class="my-[18px] rounded-[10px] bg-white border border-[#E4DED4] border-l-[3px] border-l-[#475569] px-5 py-4 shadow-sm"><div class="flex items-center gap-2.5 mb-2.5"><span class="w-2 h-2 rounded-[2px] bg-[#475569] shrink-0"></span><span class="font-extrabold uppercase tracking-wide text-[13px] text-[#475569]">Définition</span><span class="font-semibold text-[13px] text-[#8A8276]">$1</span></div>' + CONTENT)
    p = p.replace(/\\begin\{definition\}/gis,
      '<div class="my-[18px] rounded-[10px] bg-white border border-[#E4DED4] border-l-[3px] border-l-[#475569] px-5 py-4 shadow-sm"><div class="flex items-center gap-2.5 mb-2.5"><span class="w-2 h-2 rounded-[2px] bg-[#475569] shrink-0"></span><span class="font-extrabold uppercase tracking-wide text-[13px] text-[#475569]">Définition</span></div>' + CONTENT)
    p = p.replace(/\\end\{definition\}/gis, '</div></div>')

    // Théorème — bande à filets horizontaux orange + losange ◆
    p = p.replace(/\\begin\{(theoreme|theorem)\}\[(.*?)\]/gis,
      '<div style="border-top:2px solid #C2410C;border-bottom:2px solid #C2410C;background:#FDF6EF" class="px-4 py-3.5 my-[18px]"><div class="flex items-center gap-2.5 mb-2"><span style="color:#C2410C;font-size:11px" class="shrink-0">◆</span><span style="color:#C2410C" class="font-extrabold uppercase tracking-wide text-[13px]">Théorème</span><span style="color:#A06A3A" class="font-semibold text-[13px]">$2</span></div>' + CONTENT)
    p = p.replace(/\\begin\{(theoreme|theorem)\}/gis,
      '<div style="border-top:2px solid #C2410C;border-bottom:2px solid #C2410C;background:#FDF6EF" class="px-4 py-3.5 my-[18px]"><div class="flex items-center gap-2.5 mb-2"><span style="color:#C2410C;font-size:11px" class="shrink-0">◆</span><span style="color:#C2410C" class="font-extrabold uppercase tracking-wide text-[13px]">Théorème</span></div>' + CONTENT)
    p = p.replace(/\\end\{(theoreme|theorem)\}/gis, '</div></div>')

    // Proposition — filet vertical bleu + puce ronde
    p = p.replace(/\\begin\{proposition\}\[(.*?)\]/gis,
      '<div style="border-left:3px solid #3B6FB0" class="pl-[18px] py-1.5 my-5"><div class="flex items-center gap-2.5 mb-2"><span style="background:#3B6FB0" class="inline-block w-2 h-2 rounded-full shrink-0"></span><span style="color:#3B6FB0" class="font-extrabold uppercase tracking-wide text-[13px]">Proposition</span><span style="color:#8A8276" class="font-semibold text-[13px]">$1</span></div>' + CONTENT)
    p = p.replace(/\\begin\{proposition\}/gis,
      '<div style="border-left:3px solid #3B6FB0" class="pl-[18px] py-1.5 my-5"><div class="flex items-center gap-2.5 mb-2"><span style="background:#3B6FB0" class="inline-block w-2 h-2 rounded-full shrink-0"></span><span style="color:#3B6FB0" class="font-extrabold uppercase tracking-wide text-[13px]">Proposition</span></div>' + CONTENT)
    p = p.replace(/\\end\{proposition\}/gis, '</div></div>')

    // Propriété — carte teal
    p = p.replace(/\\begin\{(propriete|property)\}\[(.*?)\]/gis,
      '<div class="p-5 rounded-2xl bg-teal-50 border border-teal-200 my-6 shadow-sm"><h4 class="text-teal-700 font-bold mb-3 flex items-center text-sm"><i class="fa-solid fa-list-check mr-2 text-base"></i>Propriété : $2</h4>' + CONTENT)
    p = p.replace(/\\begin\{(propriete|property)\}/gis,
      '<div class="p-5 rounded-2xl bg-teal-50 border border-teal-200 my-6 shadow-sm"><h4 class="text-teal-700 font-bold mb-3 flex items-center text-sm"><i class="fa-solid fa-list-check mr-2 text-base"></i>Propriété</h4>' + CONTENT)
    p = p.replace(/\\end\{(propriete|property)\}/gis, '</div></div>')

    // Méthode — liseré or (ajout Chahd : utilisée par le livre)
    p = p.replace(/\\begin\{methode\}\[(.*?)\]/gis,
      '<div style="border-left:3px solid #B8860B;background:#FFFBF0" class="pl-[18px] py-2.5 my-5 rounded-r-[10px]"><div class="flex items-center gap-2.5 mb-2"><i class="fa-solid fa-screwdriver-wrench" style="color:#B8860B"></i><span style="color:#B8860B" class="font-extrabold uppercase tracking-wide text-[13px]">Méthode</span><span style="color:#8A8276" class="font-semibold text-[13px]">$1</span></div>' + CONTENT)
    p = p.replace(/\\begin\{methode\}/gis,
      '<div style="border-left:3px solid #B8860B;background:#FFFBF0" class="pl-[18px] py-2.5 my-5 rounded-r-[10px]"><div class="flex items-center gap-2.5 mb-2"><i class="fa-solid fa-screwdriver-wrench" style="color:#B8860B"></i><span style="color:#B8860B" class="font-extrabold uppercase tracking-wide text-[13px]">Méthode</span></div>' + CONTENT)
    p = p.replace(/\\end\{methode\}/gis, '</div></div>')

    // Rappel — carte ambre (formule de cours)
    p = p.replace(/\\begin\{rappel\}/gis,
      '<div style="border-left:3px solid #B5730A;background:#FBF2DE" class="pl-[18px] py-2.5 my-5 rounded-r-[10px]"><div class="flex items-center gap-2.5 mb-2"><i class="fa-solid fa-bookmark" style="color:#B5730A"></i><span style="color:#B5730A" class="font-extrabold uppercase tracking-wide text-[13px]">Rappel</span></div>' + CONTENT)
    p = p.replace(/\\end\{rappel\}/gis, '</div></div>')

    // Lemme / Corollaire / Remarque
    p = p.replace(/\\begin\{(lemme|lemma)\}\[(.*?)\]/gis,
      '<div class="p-5 rounded-2xl bg-cyan-50 border border-cyan-200 my-6 shadow-sm"><h4 class="text-cyan-700 font-bold mb-3 flex items-center text-sm"><i class="fa-solid fa-tag mr-2 text-base"></i>Lemme : $2</h4>' + CONTENT)
    p = p.replace(/\\begin\{(lemme|lemma)\}/gis,
      '<div class="p-5 rounded-2xl bg-cyan-50 border border-cyan-200 my-6 shadow-sm"><h4 class="text-cyan-700 font-bold mb-3 flex items-center text-sm"><i class="fa-solid fa-tag mr-2 text-base"></i>Lemme</h4>' + CONTENT)
    p = p.replace(/\\end\{(lemme|lemma)\}/gis, '</div></div>')

    p = p.replace(/\\begin\{(corollaire|corollary)\}\[(.*?)\]/gis,
      '<div class="p-5 rounded-2xl bg-purple-50 border border-purple-200 my-6 shadow-sm"><h4 class="text-purple-700 font-bold mb-3 flex items-center text-sm"><i class="fa-solid fa-diagram-project mr-2 text-base"></i>Corollaire : $2</h4>' + CONTENT)
    p = p.replace(/\\begin\{(corollaire|corollary)\}/gis,
      '<div class="p-5 rounded-2xl bg-purple-50 border border-purple-200 my-6 shadow-sm"><h4 class="text-purple-700 font-bold mb-3 flex items-center text-sm"><i class="fa-solid fa-diagram-project mr-2 text-base"></i>Corollaire</h4>' + CONTENT)
    p = p.replace(/\\end\{(corollaire|corollary)\}/gis, '</div></div>')

    p = p.replace(/\\begin\{(remarque|remark)\}\[(.*?)\]/gis,
      '<div class="p-4 rounded-xl bg-yellow-50 border border-yellow-200 my-4"><h4 class="text-yellow-700 font-bold mb-2 flex items-center text-xs"><i class="fa-solid fa-circle-exclamation mr-2"></i>Remarque : $2</h4>' + CONTENT)
    p = p.replace(/\\begin\{(remarque|remark)\}/gis,
      '<div class="p-4 rounded-xl bg-yellow-50 border border-yellow-200 my-4"><h4 class="text-yellow-700 font-bold mb-2 flex items-center text-xs"><i class="fa-solid fa-circle-exclamation mr-2"></i>Remarque</h4>' + CONTENT)
    p = p.replace(/\\end\{(remarque|remark)\}/gis, '</div></div>')

    // Démonstration / Solution — repliables
    p = p.replace(/\\begin\{(demonstration|proof)\}\[(.*?)\]/gis,
      '<details class="group my-6 border border-[#e2d8c9] rounded-2xl bg-[#faf8f5] overflow-hidden"><summary class="flex items-center justify-between p-4 cursor-pointer text-xs font-bold text-gray-500 hover:text-gray-900 select-none"><div class="flex items-center"><i class="fa-solid fa-key mr-2 text-emerald-700"></i>Démonstration ($2)</div><span class="transition-transform group-open:rotate-180"><i class="fa-solid fa-chevron-down"></i></span></summary><div class="p-4 pt-0 border-t border-[#e2d8c9] bg-white text-gray-700 leading-relaxed font-sans text-xs select-text">')
    p = p.replace(/\\begin\{(demonstration|proof)\}/gis,
      '<details class="group my-6 border border-[#e2d8c9] rounded-2xl bg-[#faf8f5] overflow-hidden"><summary class="flex items-center justify-between p-4 cursor-pointer text-xs font-bold text-gray-500 hover:text-gray-900 select-none"><div class="flex items-center"><i class="fa-solid fa-graduation-cap mr-2 text-cyan-700"></i>Démonstration</div><span class="transition-transform group-open:rotate-180"><i class="fa-solid fa-chevron-down"></i></span></summary><div class="p-4 pt-0 border-t border-[#e2d8c9] bg-white text-gray-700 leading-relaxed font-sans text-xs select-text">')
    p = p.replace(/\\end\{(demonstration|proof)\}/gis, '</div></details>')

    // Exemple — bloc vert clair + ampoule
    p = p.replace(/\\begin\{(exemple|example)\}\[(.*?)\]/gis, (_m, _e, t) => {
      const isEx = /^\s*exerc(i|is)/i.test(t)
      const head = isEx
        ? '<i class="fa-solid fa-pen-to-square mr-2"></i><span style="color:#15803D" class="font-bold text-[13px]">' + t + '</span>'
        : '<i class="fa-solid fa-lightbulb mr-2"></i><span style="color:#15803D" class="font-extrabold uppercase tracking-wide text-[13px]">Exemple</span><span style="color:#8A8276" class="font-semibold text-[13px] ml-2">' + t + '</span>'
      return '<div style="background:#F1F7F1" class="rounded-[10px] px-[18px] py-3.5 my-4"><div class="flex items-center mb-2" style="color:#15803D">' + head + '</div>' + CONTENT
    })
    p = p.replace(/\\begin\{(exemple|example)\}/gis,
      '<div style="background:#F1F7F1" class="rounded-[10px] px-[18px] py-3.5 my-4"><div class="flex items-center mb-2"><i class="fa-solid fa-lightbulb mr-2" style="color:#15803D"></i><span style="color:#15803D" class="font-extrabold uppercase tracking-wide text-[13px]">Exemple</span></div>' + CONTENT)
    p = p.replace(/\\end\{(exemple|example)\}/gis, '</div></div>')

    // 5. Sous-paragraphes
    p = p.replace(/\\paragraph\{([^{}]+)\}/g, '<strong class="block text-xs font-bold text-gray-800 mt-4 mb-1 font-sans">$1</strong>')

    // 6. Listes
    p = p.replace(/\\begin\{(itemize|enumerate|description)\}/gis, '')
    p = p.replace(/\\end\{(itemize|enumerate|description)\}/gis, '')
    p = p.replace(/\\item\s*/gis, ' - ')

    // 7. Inline formatting
    p = p.replace(/\\texttt\s*\{(.*?)\}/gis, '`$1`')
    p = p.replace(/\\textbf\s*\{((?:[^{}]|\{[^{}]*\})*)\}/gis, '**$1**')
    p = p.replace(/\\textit\s*\{((?:[^{}]|\{[^{}]*\})*)\}/gis, '*$1*')
    p = p.replace(/\\emph\s*\{((?:[^{}]|\{[^{}]*\})*)\}/gis, '*$1*')
    p = p.replace(/\\up\{(.*?)\}/gis, '<sup>$1</sup>')
    // NB : les escapes texte \_ \& \% \# ~ sont appliqués APRÈS l'extraction des
    // maths (sinon \# d'un cardinal mathématique serait cassé).

    // 8. Délimiteurs math \[..\] -> $$..$$ , \(..\) -> $..$
    p = p.replace(/(?<!\\)\\\[([\s\S]*?)(?<!\\)\\\]/g, (_m, t) => `$$\n${t}\n$$`)
    p = p.replace(/(?<!\\)\\\(([\s\S]*?)(?<!\\)\\\)/g, (_m, t) => `$${t}$`)

    let html = p

    // 9. Protéger les <img>
    const svgBlocks: string[] = []
    html = html.replace(/<img\s+[^>]*\/?>/gi, (m) => { svgBlocks.push(m); return `__SVGB_${svgBlocks.length - 1}__` })

    // 10. Math display puis inline (KaTeX importé, SSR-safe)
    const mathBlocks: string[] = []
    html = html.replace(/\$\$\s*([\s\S]*?)\s*\$\$/g, (_m, tex) => {
      let r: string
      try { r = `<div class="my-4 overflow-x-auto text-center select-text">${katex.renderToString(tex, { displayMode: true, throwOnError: false, macros: MACROS })}</div>` }
      catch { r = `<div class="my-4 font-mono text-xs">${tex}</div>` }
      mathBlocks.push(r); return `__MATHB_${mathBlocks.length - 1}__`
    })
    const mathInline: string[] = []
    html = html.replace(/(?<!\\)\$(?!\s)([^$]+?)(?<!\s)(?<!\\)\$/g, (m, tex) => {
      if (tex.includes('\n\n')) return m
      let r: string
      try { r = `<span class="inline-math select-text">${katex.renderToString(tex.trim(), { displayMode: false, throwOnError: false, macros: MACROS })}</span>` }
      catch { r = `<span class="font-mono text-xs">${tex}</span>` }
      mathInline.push(r); return `__MATHI_${mathInline.length - 1}__`
    })
    html = html.replace(/\\qquad/g, '  ').replace(/\\quad/g, ' ').replace(/\\[;,:]/g, ' ')
    // Escapes texte (hors maths, désormais extraites) : \\ (saut de ligne) puis \_ \& \% \# ~
    html = html.replace(/\\\\/g, ' ')
    html = html.replace(/\\_/g, '_').replace(/\\&/g, '&').replace(/\\%/g, '%').replace(/\\#/g, '#').replace(/~/g, ' ')

    // 11. Code (escape simple, pas de Prism)
    const esc = (s: string) => s.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')
    const codeBlocks: string[] = []
    html = html.replace(/```([a-zA-Z]+)?\s*\n([\s\S]*?)\n```/g, (_m, _lang, code) => {
      codeBlocks.push(`<pre class="my-3 p-4 bg-slate-900 text-slate-100 rounded-xl font-mono text-[11px] overflow-x-auto whitespace-pre select-text">${esc(code)}</pre>`)
      return `__CODEB_${codeBlocks.length - 1}__`
    })
    const inlineCodes: string[] = []
    html = html.replace(/`(.*?)`/g, (_m, c) => {
      inlineCodes.push(`<code class="px-1.5 py-0.5 bg-slate-100 text-brand-dark rounded font-mono text-[0.85em]">${esc(c)}</code>`)
      return `__CODEI_${inlineCodes.length - 1}__`
    })

    // 12. Échapper le HTML restant en protégeant les balises autorisées
    const allowed: string[] = []
    html = html.replace(/(<\/?(?:div|h[3-5]|i|sup|ul|li|table|tr|th|td|pre|code|span|br|strong|em|details|summary)(?:\s+[^>]*)?>)/gi,
      (m) => { allowed.push(m); return `__TAG_${allowed.length - 1}__` })
    html = html.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')
    allowed.forEach((t, i) => { html = html.replace(`__TAG_${i}__`, () => t) })

    // 13. Nettoyage espacements
    html = html.replace(/\\,/g, ' ').replace(/\\;/g, ' ').replace(/\\ref\{([^{}]+)\}/g, '$1').replace(/\\label\{[^{}]+\}/g, '')

    // 14. Titres
    html = html.replace(/^### (.*$)/gim, '<h5 class="text-sm font-bold text-gray-800 mt-4 mb-1 font-sans">$1</h5>')
    html = html.replace(/^## (.*$)/gim, '<h4 class="text-base font-bold text-[#b45309] mt-6 mb-2">$1</h4>')
    html = html.replace(/^# (.*$)/gim, '<h3 class="text-lg font-bold text-gray-900 mt-6 mb-3 border-b border-[#e2d8c9] pb-1">$1</h3>')

    // 15. Gras / italique
    html = html.replace(/\*\*(.*?)\*\*/g, '<strong class="font-bold text-gray-900">$1</strong>')
    html = html.replace(/\*(.*?)\*/g, '<em class="italic text-gray-700">$1</em>')

    // 16. Listes à puces
    const srcLines = html.split('\n')
    const outLines: string[] = []
    let inList = false
    let curLi: string | null = null
    const closeLi = () => { if (curLi !== null) { outLines.push(curLi + '</li>'); curLi = null } }
    const closeList = () => { if (inList) { closeLi(); outLines.push('</ul>'); inList = false } }
    for (const raw of srcLines) {
      const line = raw.trim()
      const isBullet = line.startsWith('- ') || line.startsWith('* ')
      if (isBullet) {
        if (!inList) { inList = true; outLines.push('<ul class="list-disc pl-5 my-2 space-y-1 font-sans text-xs text-gray-700">') }
        closeLi(); curLi = '<li class="leading-relaxed">' + line.substring(2).trim()
      } else if (inList) {
        if (line === '' || /^(#|<|\||__|```|\$\$|>)/.test(line)) { closeList(); outLines.push(raw) }
        else { curLi = (curLi !== null ? curLi + ' ' + line : '<li class="leading-relaxed">' + line) }
      } else { outLines.push(raw) }
    }
    closeList()
    html = outLines.join('\n')

    // 17. Tables markdown | .. |
    const tl = html.split('\n')
    let inTable = false
    for (let i = 0; i < tl.length; i++) {
      const line = (tl[i] || '').trim()
      if (line.startsWith('|') && line.endsWith('|')) {
        if (!inTable) {
          inTable = true
          tl[i] = '<div class="overflow-x-auto my-3"><table class="w-full text-left border-collapse border border-[#e2d8c9] text-[11px] text-gray-700"><tr class="bg-[#faf8f5] font-semibold border-b border-[#e2d8c9]">' +
            line.split('|').slice(1, -1).map(c => `<th class="p-2 border border-[#e2d8c9] font-semibold text-gray-900">${c.trim()}</th>`).join('') + '</tr>'
        } else if (line.includes('---')) { tl[i] = '' }
        else { tl[i] = '<tr class="border-b border-[#e2d8c9]">' + line.split('|').slice(1, -1).map(c => `<td class="p-2 border border-[#e2d8c9]">${c.trim()}</td>`).join('') + '</tr>' }
      } else if (inTable) { inTable = false; tl[i] = '</table></div>' + (tl[i] || '') }
    }
    html = tl.join('\n')

    // 18. Paragraphes (simple retour à la ligne = espace)
    html = html.split(/\n\n+/).map(block => {
      const t = block.trim()
      if (/^(<ul|<table|<div|<h|<pre|<details|__MATHB_|__SVGB_|__CODEB_)/.test(t)) return block
      if (!t) return ''
      return `<p class="my-2 leading-relaxed">${block.replace(/\n/g, hardBreaks ? '<br />' : ' ')}</p>`
    }).join('\n')

    // 19. Restaurer les placeholders
    inlineCodes.forEach((h, i) => { html = html.replace(`__CODEI_${i}__`, () => h) })
    codeBlocks.forEach((h, i) => { html = html.replace(`__CODEB_${i}__`, () => h) })
    mathBlocks.forEach((h, i) => { html = html.replace(`__MATHB_${i}__`, () => h) })
    mathInline.forEach((h, i) => { html = html.replace(`__MATHI_${i}__`, () => h) })
    svgBlocks.forEach((h, i) => { html = html.replace(`__SVGB_${i}__`, () => h) })

    return html
  } catch (e) {
    console.error('parseMarkdown error', e)
    return text
  }
}

function convertTabular(spec: string, body: string): string {
  const aligns: string[] = []
  for (let i = 0; i < spec.length; i++) {
    const c = spec[i]
    if (c === 'l') aligns.push('left')
    else if (c === 'c') aligns.push('center')
    else if (c === 'r') aligns.push('right')
    else if (c === 'p' || c === 'm' || c === 'b') { aligns.push('left'); if (spec[i + 1] === '{') { let d = 0; i++; for (; i < spec.length; i++) { if (spec[i] === '{') d++; else if (spec[i] === '}') { d--; if (d === 0) break } } } }
  }
  const rows: string[][] = []
  for (const row of body.split('\\\\')) {
    let r = row.replace(/\\hline/g, '').replace(/\\(?:top|mid|bottom)rule/g, '').replace(/\\cline\{.*?\}/g, '').trim()
    if (!r) continue
    rows.push(r.split('&'))
  }
  const rule = '1.5px solid #2E2C26'
  let html = '<div class="overflow-x-auto my-6"><table style="border-collapse:collapse;width:100%" class="text-xs">'
  rows.forEach((cells, r) => {
    const header = r === 0
    const last = r === rows.length - 1
    const trStyle = header ? `border-top:${rule};border-bottom:${rule}` : (last ? `border-bottom:${rule}` : '')
    html += `<tr style="${trStyle}">`
    cells.forEach((cell, j) => {
      const al = aligns[j] || 'left'
      html += header
        ? `<th style="text-align:${al};padding:8px 12px;font-weight:700;font-size:11px;text-transform:uppercase;color:#6B6557">${cell.trim()}</th>`
        : `<td style="text-align:${al};padding:8px 12px;color:#34332D;vertical-align:top">${cell.trim()}</td>`
    })
    html += '</tr>'
  })
  return html + '</table></div>'
}
