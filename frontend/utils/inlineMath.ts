// Rendu LaTeX inline léger pour les textes courts (QCM) : seules les portions
// entre $...$ passent par KaTeX, le reste est échappé. SSR-safe.
import katex from 'katex'

const esc = (t: string) =>
  t.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')

export function inlineMath(input: string | null | undefined): string {
  if (!input) return ''
  return input
    .split(/(\$[^$]+\$)/)
    .map((part) => {
      if (part.length > 2 && part.startsWith('$') && part.endsWith('$')) {
        try {
          return katex.renderToString(part.slice(1, -1), { throwOnError: false, displayMode: false })
        } catch {
          return esc(part)
        }
      }
      return esc(part)
    })
    .join('')
}
