#!/usr/bin/env python3
"""
Compile les figures TikZ/pgfplots d'un fichier d'annale (.tex) en SVG.
Préambule minimal reconstruit depuis le .tex source (couleurs, macros, tkz-tab,
pgfplots) -> standalone -> pdflatex -> pdftocairo -> SVG.

Usage : python3 scripts/compile-annale-figs.py <source.tex> <prefixe-sortie>
   ex : ... 2019_normale/corrige.tex  annale-21-corrige
Sortie : backend/data/annales-latex/figures/<prefixe>-<n>.svg
"""
import os
import re
import subprocess
import sys
import tempfile

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUTDIR = os.path.join(BASE, "data", "annales-latex", "figures")
TIKZ_RE = re.compile(r"\\begin\{(tikzpicture|circuitikz)\}.*?\\end\{\1\}", re.DOTALL)


def build_preamble(src_text: str) -> str:
    colors = "\n".join(re.findall(r"\\definecolor\{[^}]*\}\{[^}]*\}\{[^}]*\}", src_text))
    macros = "\n".join(
        m for m in re.findall(r"\\(?:re)?newcommand\{\\[A-Za-z]+\}(?:\[\d+\])?\{[^\n]*\}", src_text)
        if not re.search(r"headrulewidth|Exercice|Partie|conclu", m)
    )
    libs = "\n".join(re.findall(r"\\usetikzlibrary\{[^}]*\}", src_text))
    return (
        "\\documentclass[border=3pt]{standalone}\n"
        "\\usepackage[utf8]{inputenc}\n\\usepackage[T1]{fontenc}\n"
        "\\usepackage{amsmath,amssymb,mathtools,mathrsfs}\n"
        "\\usepackage{tikz}\n\\usepackage{pgfplots}\n\\pgfplotsset{compat=1.18}\n"
        "\\usepackage{tkz-tab}\n\\usepackage{circuitikz}\n"
        # bibliothèques courantes (intersections/fillbetween/etc.) pour fiabiliser la compilation
        "\\usetikzlibrary{calc,intersections,patterns,arrows.meta,positioning,"
        "decorations.pathmorphing,decorations.markings,shapes.geometric,shapes.misc,angles,quotes,matrix,babel}\n"
        "\\usepgfplotslibrary{fillbetween}\n"
        + libs + "\n" + colors + "\n" + macros + "\n"
    )


def compile_one(preamble: str, tikz: str, out_svg: str) -> bool:
    doc = preamble + "\\begin{document}\n" + tikz + "\n\\end{document}\n"
    with tempfile.TemporaryDirectory() as tmp:
        with open(os.path.join(tmp, "f.tex"), "w", encoding="utf-8") as fh:
            fh.write(doc)
        subprocess.run(["pdflatex", "-interaction=nonstopmode", "-halt-on-error", "f.tex"],
                       cwd=tmp, capture_output=True, text=True)
        pdf = os.path.join(tmp, "f.pdf")
        if not os.path.exists(pdf):
            log = ""
            try:
                log = open(os.path.join(tmp, "f.log"), encoding="utf-8", errors="ignore").read()
            except Exception:
                pass
            err = "\n".join(l for l in log.splitlines() if l.startswith("!"))[:500]
            print("    pdflatex KO :\n      " + err.replace("\n", "\n      "))
            return False
        subprocess.run(["pdftocairo", "-svg", pdf, out_svg], cwd=tmp, capture_output=True, text=True)
        return os.path.exists(out_svg)


def main():
    if len(sys.argv) != 3:
        print("Usage: compile-annale-figs.py <source.tex> <prefixe>", file=sys.stderr)
        sys.exit(1)
    src, prefix = sys.argv[1], sys.argv[2]
    with open(src, encoding="utf-8") as f:
        text = f.read()
    preamble = build_preamble(text)
    figs = [m.group(0) for m in TIKZ_RE.finditer(text)]
    os.makedirs(OUTDIR, exist_ok=True)
    ok = 0
    for i, tikz in enumerate(figs, 1):
        out = os.path.join(OUTDIR, f"{prefix}-{i}.svg")
        print(f"  {prefix}-{i} …", flush=True)
        if compile_one(preamble, tikz, out):
            ok += 1
            print(f"    ✓ {os.path.relpath(out, BASE)} ({os.path.getsize(out)} o)")
    print(f"=== {ok}/{len(figs)} figures compilées ===")


if __name__ == "__main__":
    main()
