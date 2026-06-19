import { marked } from 'marked'

marked.setOptions({ breaks: true, gfm: true })

/** Convertit le Markdown d'une fiche en HTML. */
export function renderMarkdown(src: string): string {
  return marked.parse(src) as string
}
