#!/usr/bin/env python3
"""
Découpe les problèmes d'annales (qui ont une structure « Partie ») en
sous-exercices rattachés à un chapitre, et produit data/bac/parties-maths.json.
Réservé aux annales dont sujet et corrigé ont des marqueurs de partie exploitables.

Usage : python3 scripts/decouper-bac.py
"""
import json
import os
import re

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ANN = os.path.join(BASE, "data", "annales-latex")
OUT = os.path.join(BASE, "data", "bac", "parties-maths.json")

META = {23: (2025, "NORMALE"), 1: (2024, "RATTRAPAGE"), 2: (2024, "NORMALE"), 20: (2020, "RATTRAPAGE")}

# Par annale : chapitre de chaque partie (dans l'ordre) + préfixe d'énoncé éventuel
# (pour rendre la partie autonome quand elle dépend des précédentes).
CONFIG = {
    23: [  # 2025 normale
        ("primitives-integration", ""),
        ("logarithme", ""),
        ("recurrence-suites",
         "Soit $f$ la fonction définie sur $]0,+\\infty[$ par $f(x)=x-\\dfrac{(\\ln x)^2}{x}$.\n\n"),
    ],
}

ROMAN = ["I", "II", "III", "IV", "V"]


def corps_probleme(md):
    m = re.search(r'background:#1F4E79">Probl', md)
    seg = md[m.start():]
    return seg[seg.index("</div>") + 6:]


def parties_sujet(md):
    seg = corps_probleme(md)
    morceaux = re.split(r"\\textbf\{Partie\s+[IVX]+\}\s*(?:\\\\)?", seg)
    return [m.strip() for m in morceaux[1:]]  # [0] = préambule éventuel


def parties_corrige(md):
    seg = corps_probleme(md)
    morceaux = re.split(r'<div[^>]*color:#1F4E79">(Partie\s+[^<]*)</div>', seg)
    titres, corps = [], []
    for i in range(1, len(morceaux), 2):
        titres.append(re.sub(r"^Partie\s+[IVX]+\s*:?\s*", "", morceaux[i]).strip())
        corps.append(morceaux[i + 1].strip())
    return titres, corps


def main():
    entries = []
    for aid, parts_cfg in CONFIG.items():
        annee, session = META[aid]
        sujet = parties_sujet(open(os.path.join(ANN, f"annale-{aid}-sujet.md")).read())
        titres, corr = parties_corrige(open(os.path.join(ANN, f"annale-{aid}-corrige.md")).read())
        for i, (chap, prefixe) in enumerate(parts_cfg):
            enonce = prefixe + (sujet[i] if i < len(sujet) else "")
            corrige = corr[i] if i < len(corr) else ""
            entries.append({
                "annee": annee, "session": session,
                "numero": f"Problème · Partie {ROMAN[i]}",
                "titre": titres[i] if i < len(titres) else "",
                "chapitres": [chap], "enonce": enonce, "corrige": corrige,
                "extrait": True,
            })
    os.makedirs(os.path.dirname(OUT), exist_ok=True)
    with open(OUT, "w", encoding="utf-8") as f:
        json.dump(entries, f, ensure_ascii=False)
    print(f"✓ {OUT} : {len(entries)} sous-exercices")
    for e in entries:
        print(f"  {e['annee']} {e['session'][:3]} {e['numero']:<22} -> {e['chapitres'][0]:<22} "
              f"(énoncé {len(e['enonce'])}c, corrigé {len(e['corrige'])}c) {e['titre'][:40]}")


if __name__ == "__main__":
    main()
