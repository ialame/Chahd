#!/usr/bin/env python3
"""
Convertit un chapitre LaTeX du livre de Maths en « Markdown brut » pour Chahd,
dans le MÊME esprit que la plateforme AnalyseNumériqueIA : on garde les
environnements (definition, theoreme, propriete, methode, exemple, ...) BRUTS,
c'est le moteur de rendu frontend `parseMarkdown` qui les transforme en cartes.

Le convertisseur ne fait donc que le strict minimum que `parseMarkdown` ne gère
pas : retirer le \\chapter et les commentaires, et convertir les titres
\\section/\\subsection/\\subsubsection.

Usage : python3 scripts/convert-livre.py <chapitre.tex> <sortie.md>
"""
import base64
import os
import re
import sys

# Argument LaTeX à accolades équilibrées (2 niveaux) : les titres peuvent
# contenir des maths, ex. \section{Suites $u_{n+1} = f(u_n)$}
BRACE = r"\{((?:[^{}]|\{(?:[^{}]|\{[^{}]*\})*\})*)\}"

TIKZ_RE = re.compile(r"\\begin\{tikzpicture\}.*?\\end\{tikzpicture\}", re.DOTALL)


def inline_figures(text: str, fig_dir: str, slug: str) -> str:
    """Remplace chaque tikzpicture par son SVG compilé (inliné en data-URI),
    ou un placeholder si le SVG n'existe pas. L'ordre suit compile-tikz.py."""
    n = [0]

    def repl(_m):
        n[0] += 1
        svg = os.path.join(fig_dir, f"{slug}-{n[0]}.svg")
        if os.path.exists(svg):
            with open(svg, "rb") as f:
                b64 = base64.b64encode(f.read()).decode()
            return ('<div class="flex justify-center my-5">'
                    '<img src="data:image/svg+xml;base64,' + b64 + '" '
                    'class="max-w-full" alt="Figure du cours" /></div>')
        return "*[Figure — disponible dans le PDF du livre]*"

    return TIKZ_RE.sub(repl, text)


EXOS_RE = re.compile(r"\\section\*?\{[^}]*[Ee]xercices[^}]*[Rr]ésolus[^}]*\}")
PROB_RE = re.compile(r"\\section\*?\{[^}]*[Pp]robl[^}]*[Rr]ésolus[^}]*\}")
SUBSEC_RE = re.compile(r"\\subsection\*?" + BRACE)
SOLUTION_RE = re.compile(r"\\textbf\s*\{\s*Solution[^}]*\}")


def wrap_enonces(text: str) -> str:
    """Dans une section d'exercices/problèmes, enveloppe l'énoncé de chaque item
    (du titre \\subsection*{Exercice/Problème ...} jusqu'à \\textbf{Solution})
    dans un environnement `enonce` (carte dédiée côté parseMarkdown)."""
    heads = list(SUBSEC_RE.finditer(text))
    if not heads:
        return text
    out = text[: heads[0].start()]
    for i, h in enumerate(heads):
        seg_end = heads[i + 1].start() if i + 1 < len(heads) else len(text)
        header = text[h.start(): h.end()]
        body = text[h.end(): seg_end]
        m = SOLUTION_RE.search(body)
        if m:
            enonce = body[: m.start()].strip()
            rest = body[m.start():]
            out += header + "\n\\begin{enonce}\n" + enonce + "\n\\end{enonce}\n\n" + rest
        else:
            out += header + body
    return out


def convert(text: str) -> str:
    # (les figures sont déjà inlinées en amont, avant le découpage cours / exercices)
    # Chapitre (le titre de la leçon vient de la base) + commentaires
    text = re.sub(r"\\chapter\*?" + BRACE, "", text)
    text = re.sub(r"(?m)^\s*%.*$", "", text)

    # Titres
    text = re.sub(r"\\subsubsection\*?" + BRACE, r"**\1**", text)
    text = re.sub(r"\\subsection\*?" + BRACE, r"### \1", text)
    text = re.sub(r"\\section\*?" + BRACE, r"## \1", text)

    # Tout le reste (environnements, \item, \textbf, maths, tabular, tikz...)
    # est laissé BRUT : parseMarkdown s'en charge côté frontend.

    # Compacter les lignes vides multiples
    text = re.sub(r"\n{3,}", "\n\n", text)
    return text.strip() + "\n"


def main():
    if len(sys.argv) != 3:
        print("Usage: convert-livre.py <chapitre.tex> <sortie-cours.md>", file=sys.stderr)
        sys.exit(1)
    src, out = sys.argv[1], sys.argv[2]
    slug = os.path.splitext(os.path.basename(out))[0]
    fig_dir = os.path.join(os.path.dirname(out), "figures")
    with open(src, encoding="utf-8") as f:
        raw = f.read()

    # Figures inlinées sur le chapitre ENTIER (numérotation correcte) AVANT découpage.
    inlined = inline_figures(raw, fig_dir, slug)

    # Découpe en 3 : cours / exercices résolus / problèmes résolus
    # (ordre dans le livre : cours, puis « Exercices … Résolus », puis « Problèmes Résolus »).
    mE = EXOS_RE.search(inlined)
    mP = PROB_RE.search(inlined)
    end = len(inlined)
    cours_src = inlined[: (mE.start() if mE else (mP.start() if mP else end))]
    exos_src = inlined[mE.end(): (mP.start() if mP else end)] if mE else ""
    prob_src = inlined[mP.end():] if mP else ""

    # --- Cours (sans exercices ni problèmes) ---
    md = convert(cours_src)
    os.makedirs(os.path.dirname(out), exist_ok=True)
    with open(out, "w", encoding="utf-8") as f:
        f.write(md)
    envs = len(re.findall(r"\\begin\{(definition|theoreme|propriete|methode|exemple)\}", md))
    print(f"✓ cours      {out}  ({md.count(chr(10))} lignes, {envs} environnements)")

    # --- Exercices / Problèmes résolus -> data/<kind>/<matiere>/<slug>.md ---
    def write_section(section_src, kind, mot):
        if not section_src.strip():
            return
        dest = out.replace(os.sep + "cours" + os.sep, os.sep + kind + os.sep)
        md_s = convert(wrap_enonces(section_src))
        os.makedirs(os.path.dirname(dest), exist_ok=True)
        with open(dest, "w", encoding="utf-8") as f:
            f.write(md_s)
        n = md_s.count("\\begin{enonce}") or md_s.count("### ")
        print(f"✓ {kind:<10} {dest}  ({md_s.count(chr(10))} lignes, ~{n} {mot})")

    write_section(exos_src, "exercices", "exercices")
    write_section(prob_src, "problemes", "problèmes")


if __name__ == "__main__":
    main()
