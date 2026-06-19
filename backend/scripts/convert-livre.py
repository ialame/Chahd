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


def convert(text: str, fig_dir: str = "", slug: str = "") -> str:
    # Figures TikZ -> SVG inliné (avant tout le reste)
    if slug:
        text = inline_figures(text, fig_dir, slug)

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
        print("Usage: convert-livre.py <chapitre.tex> <sortie.md>", file=sys.stderr)
        sys.exit(1)
    src, out = sys.argv[1], sys.argv[2]
    slug = os.path.splitext(os.path.basename(out))[0]
    fig_dir = os.path.join(os.path.dirname(out), "figures")
    with open(src, encoding="utf-8") as f:
        md = convert(f.read(), fig_dir, slug)
    os.makedirs(os.path.dirname(out), exist_ok=True)
    with open(out, "w", encoding="utf-8") as f:
        f.write(md)
    envs = len(re.findall(r"\\begin\{(definition|theoreme|propriete|methode|exemple)\}", md))
    print(f"✓ {out}  ({md.count(chr(10))} lignes, {envs} environnements conservés)")


if __name__ == "__main__":
    main()
