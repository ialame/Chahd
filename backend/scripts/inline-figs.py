#!/usr/bin/env python3
"""
Remplace les marqueurs [figure ...] d'un .md d'annale par les SVG compilés
(data/annales-latex/figures/<prefix>-<n>.svg), inlinés en base64 — comme convert-annale.py.
Les marqueurs [tableau ...] sont laissés tels quels (à convertir en table Markdown à part).

Usage : python3 scripts/inline-figs.py <fichier.md> <prefix>
   ex : ... data/annales-latex/annale-213-sujet.md annale-213-sujet
Les figures attendues : figures/<prefix>-1.svg, <prefix>-2.svg, ... (dans l'ordre des marqueurs).
"""
import base64
import os
import re
import sys

FIG_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "data", "annales-latex", "figures")
MARKER = re.compile(r"\*?\[[Ff]igure\b[^\]]*\]\*?")


def main():
    md_path, prefix = sys.argv[1], sys.argv[2]
    text = open(md_path, encoding="utf-8").read()
    n = [0]
    missing = []

    def repl(_m):
        n[0] += 1
        svg = os.path.join(FIG_DIR, f"{prefix}-{n[0]}.svg")
        if os.path.exists(svg):
            b64 = base64.b64encode(open(svg, "rb").read()).decode()
            return ('<div class="flex justify-center my-5"><img src="data:image/svg+xml;base64,'
                    + b64 + '" class="max-w-full" alt="Figure" /></div>')
        missing.append(n[0])
        return _m.group(0)  # garde le marqueur si pas de SVG

    new = MARKER.sub(repl, text)
    open(md_path, "w", encoding="utf-8").write(new)
    print(f"  {os.path.basename(md_path)} : {n[0]} marqueurs, {n[0]-len(missing)} inlinés"
          + (f", manquants {missing}" if missing else ""))


if __name__ == "__main__":
    main()
