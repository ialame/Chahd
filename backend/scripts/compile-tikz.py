#!/usr/bin/env python3
"""
Compile les figures TikZ/pgfplots du livre de Maths en SVG.
Chaque \\begin{tikzpicture}...\\end{tikzpicture} d'un chapitre est compilé en
standalone (avec le préambule du livre : tikz, pgfplots, couleurs, macros)
puis converti en SVG via pdflatex + dvisvgm.

Sortie : backend/data/cours/maths/figures/<slug>-<n>.svg

Usage : python3 scripts/compile-tikz.py            # tous les chapitres
        python3 scripts/compile-tikz.py <slug>     # un seul chapitre
"""
import os
import re
import subprocess
import sys
import tempfile

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))          # backend/
BOOK = os.path.normpath(os.path.join(BASE, "..", "Livre_Maths_Terminale"))
CHAP = os.path.join(BOOK, "chapters")
OUTDIR = os.path.join(BASE, "data", "cours", "maths", "figures")

# tex -> slug (identique à convert-livre)
CHAPTERS = [
    ("chap1_recurrence_suites.tex", "recurrence-suites"),
    ("chap2_limites_continuation.tex", "limites-continuite"),
    ("chap3_derivation_convexite.tex", "derivation-convexite"),
    ("chap4_logarithme.tex", "logarithme"),
    ("chap5_exponentielle.tex", "exponentielle"),
    ("chap10_nombres_complexes.tex", "nombres-complexes"),
    ("chap6_primitives_integration.tex", "primitives-integration"),
    ("chap7_denombrement.tex", "denombrement"),
    ("chap8_geometrie_espace.tex", "geometrie-espace"),
    ("chap9_probabilites.tex", "probabilites"),
]

TIKZ_RE = re.compile(r"\\begin\{tikzpicture\}.*?\\end\{tikzpicture\}", re.DOTALL)


def build_preamble() -> str:
    """Récupère couleurs + macros mathématiques du préambule du livre."""
    with open(os.path.join(BOOK, "preamble.tex"), encoding="utf-8") as f:
        pre = f.read()
    colors = "\n".join(re.findall(r"\\definecolor\{[^}]*\}\{[^}]*\}\{[^}]*\}", pre))
    # macros math \R \N ... \binom (une ligne chacune)
    macros = "\n".join(
        m for m in re.findall(r"\\(?:re)?newcommand\{\\[A-Za-z]+\}(?:\[\d+\])?\{[^\n]*\}", pre)
        if not re.search(r"headrulewidth|chaptermark|sectionmark", m)
    )
    return (
        "\\documentclass[border=3pt]{standalone}\n"
        "\\usepackage[utf8]{inputenc}\n\\usepackage[T1]{fontenc}\n"
        "\\usepackage{amsmath,amssymb,amsfonts,mathrsfs}\n"
        "\\usepackage{tikz}\n\\usepackage{pgfplots}\n\\pgfplotsset{compat=1.18}\n"
        "\\usetikzlibrary{shapes, positioning, arrows.meta, calc, patterns}\n"
        + colors + "\n" + macros + "\n"
    )


PREAMBLE = build_preamble()


def compile_one(tikz: str, out_svg: str) -> bool:
    doc = PREAMBLE + "\\begin{document}\n" + tikz + "\n\\end{document}\n"
    with tempfile.TemporaryDirectory() as tmp:
        tex = os.path.join(tmp, "fig.tex")
        with open(tex, "w", encoding="utf-8") as f:
            f.write(doc)
        r = subprocess.run(
            ["pdflatex", "-interaction=nonstopmode", "-halt-on-error", "fig.tex"],
            cwd=tmp, capture_output=True, text=True)
        pdf = os.path.join(tmp, "fig.pdf")
        if not os.path.exists(pdf):
            log = (r.stdout or "")[-600:]
            print("    pdflatex a échoué :\n      " + log.replace("\n", "\n      ")[-600:])
            return False
        # PDF -> SVG via pdftocairo (poppler)
        rs = subprocess.run(
            ["pdftocairo", "-svg", pdf, out_svg],
            cwd=tmp, capture_output=True, text=True)
        if not os.path.exists(out_svg):
            print("    pdftocairo a échoué :\n      " + (rs.stderr or "")[-400:])
            return False
    return True


def main():
    only = sys.argv[1] if len(sys.argv) > 1 else None
    os.makedirs(OUTDIR, exist_ok=True)
    total = ok = 0
    for texname, slug in CHAPTERS:
        if only and slug != only:
            continue
        path = os.path.join(CHAP, texname)
        if not os.path.exists(path):
            continue
        with open(path, encoding="utf-8") as f:
            figs = TIKZ_RE.findall(f.read())
        for i, tikz in enumerate(figs, 1):
            total += 1
            out_svg = os.path.join(OUTDIR, f"{slug}-{i}.svg")
            print(f"  {slug}-{i} …", flush=True)
            if compile_one(tikz, out_svg):
                ok += 1
                print(f"    ✓ {os.path.relpath(out_svg, BASE)} ({os.path.getsize(out_svg)} o)")
    print(f"\n=== {ok}/{total} figures compilées en SVG ===")


if __name__ == "__main__":
    main()
