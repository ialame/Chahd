#!/usr/bin/env python3
"""
Convertit un fichier d'annale LaTeX (sujet ou corrigé) en Markdown pour Chahd,
rendu par parseMarkdown (mêmes cartes que le cours).

Gère :
- corps entre \\begin{document}..\\end{document}, retrait du bloc titre \\begin{center}
- \\Exercice{titre}{points} / env exercice[opt]{pts} -> bandeau ; \\probleme / env probleme
- \\Partie{titre} -> sous-titre ; \\conclu{...} -> ligne de conclusion
- listes questions/subquestions/enumerate -> numérotation 1. / a) / i. (combinée)
  et itemize -> puces
- align* -> $$ aligned $$ ; figures TikZ -> SVG inliné
- garde rappel / methode / tcolorbox bruts (cartes via parseMarkdown)

Usage : python3 scripts/convert-annale.py <source.tex> <sortie.md>
        (les figures sont lues dans data/annales-latex/figures/<basename>-<n>.svg)
"""
import base64
import os
import re
import sys

BRACE = r"\{((?:[^{}]|\{(?:[^{}]|\{[^{}]*\})*\})*)\}"
TIKZ_RE = re.compile(r"\\begin\{tikzpicture\}.*?\\end\{tikzpicture\}", re.DOTALL)

BANNER = ('<div class="my-5 rounded-lg px-4 py-2.5 text-white font-bold" '
          'style="background:#1F4E79">{t} '
          '<span class="font-normal text-white/80 text-sm">({p})</span></div>')


def roman(n):
    out, table = "", [(10, "x"), (9, "ix"), (5, "v"), (4, "iv"), (1, "i")]
    for v, r in table:
        while n >= v:
            out += r
            n -= v
    return out


def label_for(stack):
    parts = []
    for d, fr in enumerate(stack, 1):
        c = fr[1]
        parts.append(str(c) if d == 1 else (chr(96 + c) if d == 2 else roman(c)))
    return ".".join(parts)


def process_lists(text):
    pat = re.compile(r"\\begin\{(questions|subquestions|enumerate|itemize)\}|"
                     r"\\end\{(questions|subquestions|enumerate|itemize)\}|\\item\b")
    out, stack, pending, last = [], [], None, 0

    def flush(seg):
        nonlocal pending
        if pending is None:
            out.append(seg)
            return
        kind, label = pending
        if kind == "bullet":
            out.append("\n- " + seg.strip())
            pending = None
        elif seg.strip():
            out.append("\n\n**" + label + ")** " + seg.strip() + "\n")
            pending = None
        else:                       # item « parent vide » -> on laisse l'enfant porter le label
            pending = None
            out.append(seg)

    for m in pat.finditer(text):
        flush(text[last:m.start()])
        last = m.end()
        tok = m.group(0)
        if tok.startswith("\\begin"):
            stack.append([m.group(1), 0])
        elif tok.startswith("\\end"):
            if stack:
                stack.pop()
        else:                       # \item
            if stack:
                stack[-1][1] += 1
                pending = ("bullet", None) if stack[-1][0] == "itemize" else ("lab", label_for(stack))
    flush(text[last:])
    return "".join(out)


def inline_figures(text, fig_dir, prefix):
    n = [0]

    def repl(_m):
        n[0] += 1
        svg = os.path.join(fig_dir, f"{prefix}-{n[0]}.svg")
        if os.path.exists(svg):
            b64 = base64.b64encode(open(svg, "rb").read()).decode()
            return ('<div class="flex justify-center my-5"><img src="data:image/svg+xml;base64,'
                    + b64 + '" class="max-w-full" alt="Figure" /></div>')
        return "*[Figure — voir le PDF]*"

    return TIKZ_RE.sub(repl, text)


def convert(text, fig_dir, prefix):
    # 1. Corps du document
    m = re.search(r"\\begin\{document\}(.*?)\\end\{document\}", text, re.DOTALL)
    if m:
        text = m.group(1)
    # 2. Retrait du 1er bloc titre \begin{center}...\end{center}
    text = re.sub(r"\\begin\{center\}.*?\\end\{center\}", "", text, count=1, flags=re.DOTALL)
    # 3. Figures
    text = inline_figures(text, fig_dir, prefix)
    # 4. Macros structurantes
    text = re.sub(r"\\Exercice\s*" + BRACE + r"\s*" + BRACE,
                  lambda x: BANNER.format(t=x.group(1), p=x.group(2)), text)
    text = re.sub(r"\\Partie\s*" + BRACE,
                  r'<div class="mt-6 mb-2 text-base font-bold" style="color:#1F4E79">\1</div>', text)
    text = re.sub(r"\\conclu\s*" + BRACE,
                  r'<div class="my-2 font-semibold" style="color:#1F4E79">⇒ \1</div>', text)
    # env exercice[opt]{pts} / probleme{pts} -> bandeau (compteur)
    ex = [0]

    def exo(x):
        ex[0] += 1
        return BANNER.format(t=f"Exercice {ex[0]}", p=f"{x.group(2)} points")

    text = re.sub(r"\\begin\{exercice\}(\[[^\]]*\])?" + BRACE, exo, text)
    text = re.sub(r"\\end\{exercice\}", "", text)
    text = re.sub(r"\\begin\{probleme\}" + BRACE,
                  lambda x: BANNER.format(t="Problème", p=f"{x.group(1)} points"), text)
    text = re.sub(r"\\end\{probleme\}", "", text)
    # 5. align* / gather* autonomes -> $$ aligned $$
    text = re.sub(r"\\begin\{align\*?\}(.*?)\\end\{align\*?\}",
                  r"$$\\begin{aligned}\1\\end{aligned}$$", text, flags=re.DOTALL)
    text = re.sub(r"\\begin\{gather\*?\}(.*?)\\end\{gather\*?\}",
                  r"$$\\begin{gathered}\1\\end{gathered}$$", text, flags=re.DOTALL)
    # 6. Listes
    text = process_lists(text)
    # 7. Couleurs / polices inline
    text = re.sub(r"\\textcolor\s*" + BRACE + r"\s*" + BRACE, r"\2", text)
    text = re.sub(r"\\color\s*" + BRACE, "", text)
    text = re.sub(r"\\enspace", " ", text)
    text = re.sub(r"\\textbullet", "•", text)
    # groupes de police {\sffamily ... texte} -> texte (UNIQUEMENT commandes de police,
    # pour ne pas toucher aux maths du type {\pi}, {\alpha}…)
    FONT = (r"sffamily|bfseries|itshape|rmfamily|ttfamily|normalfont|sf|bf|it|"
            r"small|footnotesize|scriptsize|large|Large|LARGE|normalsize")
    text = re.sub(r"\{(?:\\(?:" + FONT + r")\b\s*)+([^{}]*)\}", r"\1", text)
    text = re.sub(r"\\(?:" + FONT + r")\b", "", text)

    # 8. Nettoyage de mise en page (le reste : rappel/methode/tcolorbox/textbf/maths -> parseMarkdown)
    text = re.sub(r"\\thispagestyle\{[^}]*\}", "", text)
    text = re.sub(r"\\(noindent|centering|par|medskip|bigskip|smallskip|clearpage|newpage)\b", "", text)
    text = re.sub(r"\\vspace\*?\{[^}]*\}", "", text)
    text = re.sub(r"\\hspace\*?\{[^}]*\}", " ", text)
    text = re.sub(r"\\rule\{[^}]*\}\{[^}]*\}", "", text)
    # minipage (mise en page côte-à-côte texte/figure) -> on déballe le contenu
    text = re.sub(r"\\begin\{minipage\}(\[[^\]]*\])?\s*\{[^}]*\}", "", text)
    text = re.sub(r"\\end\{minipage\}", "", text)
    # commandes de mise en page LaTeX parfois glissées dans les maths (no-op pour KaTeX)
    text = re.sub(r"\\renewcommand\{\\arraystretch\}\{[^}]*\}", "", text)
    text = re.sub(r"\\setlength\{[^}]*\}\{[^}]*\}", "", text)
    text = re.sub(r"\\arraystretch", "", text)
    # math imbriqué dans \text{} : \text{$k$ succès} -> k\text{ succès} (sinon le $ casse l'appariement)
    text = re.sub(r"\\text\{\$([^$}]+)\$([^{}]*)\}", r"\1\\text{\2}", text)
    text = re.sub(r"\\hfill", " ", text)
    text = re.sub(r"\\(label|input)\{[^}]*\}", "", text)
    text = re.sub(r"\n{3,}", "\n\n", text)
    return text.strip() + "\n"


def main():
    if len(sys.argv) != 3:
        print("Usage: convert-annale.py <source.tex> <sortie.md>", file=sys.stderr)
        sys.exit(1)
    src, out = sys.argv[1], sys.argv[2]
    prefix = os.path.splitext(os.path.basename(out))[0]
    fig_dir = os.path.join(os.path.dirname(out), "figures")
    md = convert(open(src, encoding="utf-8").read(), fig_dir, prefix)
    os.makedirs(os.path.dirname(out), exist_ok=True)
    open(out, "w", encoding="utf-8").write(md)
    print(f"✓ {out}  ({md.count(chr(10))} lignes)")


if __name__ == "__main__":
    main()
