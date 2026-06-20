// Découpe une annale (sujet + corrigé) par bandeaux d'exercice/problème et
// apparie chaque énoncé à son corrigé, pour un affichage « énoncé puis corrigé
// repliable » exercice par exercice.
import { parseMarkdown } from './parseMarkdown'

// Bandeau produit par convert-annale.py (BANNER) : <div ... style="background:#1F4E79">Titre<span>…</span></div>
const BANNER_RE = /<div class="my-5 rounded-lg px-4 py-2\.5 text-white font-bold" style="background:#1F4E79">([\s\S]*?)<\/div>/g

interface RawSection { key: string; banner: string; body: string }

// Clé normalisée : « Exercice 1 — … » -> « ex1 », « Problème … » -> « probleme ».
function keyOf(bannerInner: string): string {
  const text = bannerInner.replace(/<span[\s\S]*?<\/span>/g, '').trim()
  const m = text.match(/Exercice\s*(\d+)/i)
  if (m) return 'ex' + m[1]
  if (/probl/i.test(text)) return 'probleme'
  return text.toLowerCase()
}

function split(md: string): { preamble: string; sections: RawSection[] } {
  const matches = [...md.matchAll(BANNER_RE)]
  const preamble = matches.length ? md.slice(0, matches[0].index) : md
  const sections = matches.map((m, i) => {
    const start = (m.index ?? 0) + m[0].length
    const end = i + 1 < matches.length ? (matches[i + 1].index ?? md.length) : md.length
    return { key: keyOf(m[1]), banner: m[0], body: md.slice(start, end) }
  })
  return { preamble, sections }
}

export interface AnnaleSection {
  enonceHtml: string
  corrigeHtml: string | null
}
export interface AnnaleView {
  preambleHtml: string
  sections: AnnaleSection[]
}

export function buildAnnaleSections(sujetMd: string | null, corrigeMd: string | null): AnnaleView {
  const s = split(sujetMd ?? '')

  // Repli si le sujet n'a pas de bandeau : un seul bloc (tout le sujet + tout le corrigé).
  if (s.sections.length === 0) {
    return {
      preambleHtml: '',
      sections: [{
        enonceHtml: sujetMd ? parseMarkdown(sujetMd) : '',
        corrigeHtml: corrigeMd ? parseMarkdown(corrigeMd) : null
      }]
    }
  }

  const c = corrigeMd ? split(corrigeMd) : { preamble: '', sections: [] as RawSection[] }

  // Index de la 1re section du sujet pour chaque clé.
  const idxByKey = new Map<string, number>()
  s.sections.forEach((sec, i) => { if (!idxByKey.has(sec.key)) idxByKey.set(sec.key, i) })

  // Rattache chaque section de corrigé à la section d'énoncé de même clé ;
  // les corrigés orphelins (ex. un Exercice 4 sans énoncé correspondant) sont
  // ajoutés (avec leur bandeau) à la section courante.
  const corr: string[] = s.sections.map(() => '')
  let current = -1
  for (const cs of c.sections) {
    if (idxByKey.has(cs.key)) {
      current = idxByKey.get(cs.key) as number
      corr[current] += cs.body
    } else {
      const tgt = current >= 0 ? current : s.sections.length - 1
      if (tgt >= 0) corr[tgt] += cs.banner + cs.body
    }
  }

  const sections: AnnaleSection[] = s.sections.map((sec, i) => ({
    enonceHtml: parseMarkdown(sec.banner + sec.body),
    corrigeHtml: corr[i].trim() ? parseMarkdown(corr[i]) : null
  }))

  return {
    preambleHtml: s.preamble.trim() ? parseMarkdown(s.preamble) : '',
    sections
  }
}
