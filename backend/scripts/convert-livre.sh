#!/usr/bin/env bash
# Convertit un chapitre LaTeX du livre de Maths en Markdown + KaTeX pour l'application.
# Pipeline : pré-traitement (titres de boîtes + figures) -> pandoc -> post-traitement (délimiteurs math).
# Usage : bash scripts/convert-livre.sh <fichier.tex> <sortie.md>
set -euo pipefail

SRC="$1"; OUT="$2"
TMP_PRE="$(mktemp).tex"
TMP_GFM="$(mktemp).md"

# 1) Pré-traitement
#  - injecte le titre optionnel des boîtes [Titre] en gras au début de la boîte
#  - remplace les figures TikZ/pgfplots par un placeholder
perl -0777 -pe '
  s/\\begin\{(definition|theoreme|propriete|methode|exemple)\}\[([^\]]*)\]/\\begin{$1}\n\\textbf{$2}\n\n/g;
  s/\\begin\{tikzpicture\}.*?\\end\{tikzpicture\}/\\textit{[Figure — disponible dans le PDF du livre]}/gs;
  s/\\begin\{axis\}.*?\\end\{axis\}//gs;
' "$SRC" > "$TMP_PRE"

# 2) Pandoc : LaTeX -> GFM (conserve les <div class="..."> des boîtes)
pandoc "$TMP_PRE" -f latex -t gfm+tex_math_dollars --wrap=preserve 2>/dev/null > "$TMP_GFM"

# 3) Post-traitement : délimiteurs math GFM -> KaTeX
#  Bloc fenced ```math ... ``` -> $$ ... $$  (robuste à l'indentation des listes,
#  flags g/m/s : appariement par ligne, non-greedy)   puis   $`...`$ -> $...$
mkdir -p "$(dirname "$OUT")"
perl -0777 -pe '
  s/^([ \t]*)`{3,}[ \t]*math[ \t]*\r?\n(.*?)\r?\n[ \t]*`{3,}[ \t]*$/$1\$\$\n$2\n$1\$\$/gms;
  s/\$`(.+?)`\$/\$$1\$/g;
' "$TMP_GFM" > "$OUT"

rm -f "$TMP_PRE" "$TMP_GFM"
echo "✓ $OUT  ($(wc -l < "$OUT" | tr -d ' ') lignes, $(grep -c '<div class=' "$OUT" || true) boîtes)"
