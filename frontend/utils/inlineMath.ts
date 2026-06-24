// Rendu léger pour les textes courts (QCM, fiches) : `code` -> monospace, $...$ -> KaTeX,
// **gras** -> strong, le reste est échappé. SSR-safe.
import katex from 'katex'

const esc = (t: string) =>
  t.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')

export function inlineMath(input: string | null | undefined): string {
  if (!input) return ''
  // Un seul passage : à chaque position, on reconnaît `code`, $math$, **gras**, ou du texte.
  const re = /`([^`]+?)`|\$([^$\n]+?)\$|\*\*([^*\n]+?)\*\*/g
  let out = ''
  let last = 0
  let m: RegExpExecArray | null
  while ((m = re.exec(input)) !== null) {
    out += esc(input.slice(last, m.index))
    if (m[1] !== undefined) {
      out += `<code class="rounded bg-slate-100 px-1 py-0.5 font-mono text-[0.9em] text-brand">${esc(m[1])}</code>`
    } else if (m[2] !== undefined) {
      try {
        out += katex.renderToString(m[2], { throwOnError: false, displayMode: false })
      } catch {
        out += esc(m[0])
      }
    } else {
      out += `<strong class="font-semibold text-ink">${esc(m[3])}</strong>`
    }
    last = re.lastIndex
  }
  out += esc(input.slice(last))
  return out
}
