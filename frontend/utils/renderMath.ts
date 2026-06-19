// Rendu Markdown léger + KaTeX — style repris de la plateforme AnalyseNumériqueIA
// (mathMarkdown.ts), adapté à Chahd :
//  - KaTeX importé (SSR-safe), thème clair, marqueur de slot sûr
//  - les blocs « ### Label : Titre » (Définition/Théorème/…) sont regroupés
//    en CARTES décorées (bordure + fond teinté), jusqu'au titre suivant.
import katex from 'katex'
import { katexMacros } from '~/utils/katexMacros'

// Label -> couleur (bordure + accent)
const LABELS: Record<string, string> = {
  'Définition': '#1f4e79', 'Théorème': '#2e7559', 'Propriété': '#80306c',
  'Proposition': '#80306c', 'Méthode': '#cc5500', 'Exemple': '#475569',
  'Lemme': '#2e7559', 'Corollaire': '#2e7559', 'Remarque': '#475569',
  'Démonstration': '#475569'
}
const LABEL_RE = /^(Définition|Théorème|Propriété|Proposition|Méthode|Exemple|Lemme|Corollaire|Remarque|Démonstration)\s*:?\s*(.*)$/

export function renderMath(src: string): string {
  if (!src) return ''

  const renderTeX = (tex: string, display: boolean) => {
    try {
      return katex.renderToString(tex, { displayMode: display, throwOnError: false, macros: katexMacros })
    } catch {
      return '<span class="text-red-500 font-mono text-xs">' + tex + '</span>'
    }
  }

  const slots: string[] = []
  const mark = (html: string) => { slots.push(html); return 'XSLOTX' + (slots.length - 1) + 'XSLOTX' }
  const esc = (t: string) => t.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')

  let s = src

  // 0. Code AVANT les maths
  s = s.replace(/```[a-zA-Z]*\n?([\s\S]*?)```/g, (_m, code) =>
    mark('<pre class="my-3 p-3 rounded-xl bg-slate-900 text-slate-100 overflow-x-auto font-mono text-xs leading-relaxed">' + esc(code.replace(/\n$/, '')) + '</pre>'))
  s = s.replace(/`([^`\n]+)`/g, (_m, c) =>
    mark('<code class="px-1.5 py-0.5 rounded bg-slate-100 text-brand-dark font-mono text-[0.85em]">' + esc(c) + '</code>'))

  // 1. Maths : normaliser \[..\]/\(..\) puis extraire $$..$$ et $..$
  s = s.replace(/\\\[([\s\S]*?)\\\]/g, (_m, t) => '$$' + t + '$$')
  s = s.replace(/\\\(([\s\S]*?)\\\)/g, (_m, t) => '$' + t.trim() + '$')
  s = s.replace(/\$\$([\s\S]+?)\$\$/g, (_m, t) => mark(renderTeX(t.trim(), true)))
  s = s.replace(/\$([^$\n]+?)\$/g, (_m, t) => mark(renderTeX(t.trim(), false)))
  s = s.replace(/\\qquad/g, '  ').replace(/\\quad/g, ' ').replace(/\\[;,:]/g, ' ')

  // 2. Échapper le HTML restant
  s = s.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')

  // 3. Rendu ligne à ligne (avec cartes pour les blocs labellisés)
  const inline = (t: string) => t
    .replace(/\*\*([^*]+)\*\*/g, '<strong class="font-semibold text-slate-900">$1</strong>')
    .replace(/(^|[^*])\*([^*\n]+)\*/g, '$1<em class="text-slate-600">$2</em>')

  const out: string[] = []
  let para: string[] = []
  let list: string[] = []
  let boxOpen = false

  const flushPara = () => { if (para.length) { out.push('<p class="my-2 leading-relaxed">' + para.map(inline).join(' ') + '</p>'); para = [] } }
  const flushList = () => { if (list.length) { out.push('<ul class="my-2 ml-1 list-disc list-inside space-y-1 marker:text-brand">' + list.map(li => '<li>' + inline(li) + '</li>').join('') + '</ul>'); list = [] } }
  const closeBox = () => { flushPara(); flushList(); if (boxOpen) { out.push('</div>'); boxOpen = false } }

  for (const raw of s.split('\n')) {
    const line = raw.replace(/\s+$/, '')
    const h3 = line.match(/^###\s+(.*)$/)
    if (h3) {
      const lbl = h3[1].match(LABEL_RE)
      flushPara(); flushList(); closeBox()
      if (lbl) {
        const color = LABELS[lbl[1]]
        const titre = lbl[2] ? ' <span class="font-normal text-slate-600">— ' + inline(lbl[2]) + '</span>' : ''
        out.push('<div class="my-4 rounded-r-lg border-l-4 px-4 py-3" style="border-color:' + color + ';background:' + color + '0d">')
        out.push('<div class="mb-1.5 text-xs font-bold uppercase tracking-wide" style="color:' + color + '">' + lbl[1] + titre + '</div>')
        boxOpen = true
      } else {
        out.push('<h3 class="mt-4 mb-1 text-base font-semibold text-slate-800">' + inline(h3[1]) + '</h3>')
      }
    } else if (/^##\s+/.test(line)) {
      flushPara(); flushList(); closeBox()
      out.push('<h2 class="mt-6 mb-2 text-lg font-bold text-brand-dark">' + inline(line.replace(/^##\s+/, '')) + '</h2>')
    } else if (/^-\s+/.test(line)) {
      flushPara(); list.push(line.replace(/^-\s+/, ''))
    } else if (line.trim() === '') {
      flushPara(); flushList()
    } else if (list.length) {
      list[list.length - 1] += ' ' + line.trim()
    } else {
      para.push(line)
    }
  }
  flushPara(); flushList(); closeBox()
  s = out.join('\n')

  // 4. Réinjecter code + maths
  s = s.replace(/XSLOTX(\d+)XSLOTX/g, (_m, n) => slots[Number(n)] ?? '')
  return s
}
