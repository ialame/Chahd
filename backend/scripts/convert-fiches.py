#!/usr/bin/env python3
"""
Convertit un CSV de flashcards (question,reponse — LaTeX possible) en JSON pour Chahd.
Les champs peuvent être entre guillemets (virgules internes) -> parsing CSV standard ;
sinon on rejoint les colonnes au-delà de la 1re pour reconstituer la réponse.

Usage : python3 scripts/convert-fiches.py <source.csv> <sortie.json>
Sortie : [ { "question": "...", "reponse": "..." }, ... ]
"""
import csv
import json
import os
import sys


def main():
    if len(sys.argv) != 3:
        print("Usage: convert-fiches.py <source.csv> <sortie.json>", file=sys.stderr)
        sys.exit(1)
    src, out = sys.argv[1], sys.argv[2]
    cards = []
    with open(src, encoding="utf-8", newline="") as f:
        for row in csv.reader(f):
            if not row:
                continue
            question = row[0].strip()
            reponse = ",".join(row[1:]).strip() if len(row) > 1 else ""
            if question and reponse:
                cards.append({"question": question, "reponse": reponse})
    os.makedirs(os.path.dirname(out), exist_ok=True)
    with open(out, "w", encoding="utf-8") as f:
        json.dump(cards, f, ensure_ascii=False)
    print(f"✓ {out} ({len(cards)} fiches)")


if __name__ == "__main__":
    main()
