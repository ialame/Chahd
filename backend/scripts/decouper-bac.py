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

META = {
    23: (2025, "NORMALE"), 24: (2025, "RATTRAPAGE"), 1: (2024, "RATTRAPAGE"), 2: (2024, "NORMALE"),
    3: (2023, "RATTRAPAGE"), 11: (2023, "NORMALE"), 16: (2022, "RATTRAPAGE"), 15: (2022, "NORMALE"),
    17: (2021, "NORMALE"), 18: (2021, "RATTRAPAGE"), 20: (2020, "RATTRAPAGE"), 19: (2020, "NORMALE"),
    21: (2019, "NORMALE"), 22: (2019, "RATTRAPAGE"),
}

# Par annale : chapitre de chaque partie (dans l'ordre) + préfixe d'énoncé éventuel
# (pour rendre la partie autonome quand elle dépend des précédentes).
CONFIG = {
    23: [  # 2025 normale
        ("primitives-integration", ""),
        ("logarithme", ""),
        ("recurrence-suites",
         "Soit $f$ la fonction définie sur $]0,+\\infty[$ par $f(x)=x-\\dfrac{(\\ln x)^2}{x}$.\n\n"),
    ],
    1: [  # 2024 rattrapage
        ("recurrence-suites", ""),
        ("exponentielle", ""),
    ],
    2: [  # 2024 normale
        ("primitives-integration", ""),
        ("exponentielle", ""),
    ],
    20: [  # 2020 rattrapage (parties sans titre -> titres explicites)
        ("derivation-convexite", "", "variations de $g(x)=e^{1-x}+\\dfrac1x-2$"),
        ("exponentielle", "", "étude de $f(x)=(1-x)e^{1-x}-x^2+5x-3-2\\ln x$"),
        ("recurrence-suites",
         "Soit $f$ la fonction définie sur $]0,+\\infty[$ par "
         "$f(x)=(1-x)e^{1-x}-x^2+5x-3-2\\ln x$.\n\n",
         "suite définie par $u_{n+1}=f(u_n)$"),
    ],
}

ROMAN = ["I", "II", "III", "IV", "V"]

# Découpage par PLAGES DE QUESTIONS (problèmes sans « Partie »).
# Par annale : preambule (rappel auto de la fonction) + blocs (chapitre, (q_debut, q_fin), titre).
CONFIG_Q = {
    24: [  # 2025 rattrapage — f(x)=x-1+4/(e^x+2)  (exp)
        ("limites-continuite", (1, 3), "limites et asymptotes de $f(x)=x-1+\\dfrac{4}{e^x+2}$"),
        ("exponentielle", (4, 7), "variations, convexité et point d'inflexion de $f$"),
        ("primitives-integration", (8, 8), "calcul d'aire sous $(C_f)$"),
    ],
    3: [  # 2023 rattrapage — f définie par morceaux (exp)
        ("limites-continuite", (1, 1), "continuité de $f$ au point 2"),
        ("exponentielle", (2, 5), "variations et tracé de $f$"),
        ("primitives-integration", (6, 6), "aire (intégration par parties)"),
    ],
    11: [  # 2023 normale — f avec ln
        ("limites-continuite", (1, 1), "limites et asymptote"),
        ("logarithme", (2, 5), "variations, concavité et tracé"),
        ("primitives-integration", (6, 6), "calcul d'aire"),
        ("recurrence-suites", (7, 7), "étude d'une suite récurrente $u_{n+1}=f(u_n)$"),
    ],
    16: [  # 2022 rattrapage — f(x)=x^2(1-ln x)
        ("limites-continuite", (1, 2), "limite, continuité et dérivabilité en 0"),
        ("logarithme", (3, 6), "variations, point d'inflexion et tracé"),
        ("primitives-integration", (7, 7), "calcul d'aire"),
    ],
    17: [  # 2021 normale — f(x)=2x ln x - 2x
        ("limites-continuite", (1, 2), "continuité et limites"),
        ("logarithme", (3, 4), "variations et tracé"),
        ("primitives-integration", (5, 5), "calcul d'aire"),
        ("derivation-convexite", (6, 8), "minimum, réciproque et dérivabilité"),
    ],
    18: [  # 2021 rattrapage — f(x)=2-x e^{-x+1}
        ("limites-continuite", (1, 2), "limites et asymptotes"),
        ("exponentielle", (3, 6), "variations, convexité et minimum"),
        ("primitives-integration", (7, 7), "calcul d'aire"),
        ("derivation-convexite", (8, 8), "fonction réciproque"),
    ],
    19: [  # 2020 normale — f avec e^{x-2}
        ("limites-continuite", (1, 3), "limites, asymptotes et branches"),
        ("exponentielle", (4, 7), "variations, convexité et tracé"),
        ("derivation-convexite", (8, 8), "fonction réciproque"),
    ],
}

QLABEL = re.compile(r"\*\*(\d+)(?:\.[a-z])?\)\*\*")


def split_questions(text):
    """-> (préambule, {num_question: bloc})."""
    ms = list(QLABEL.finditer(text))
    if not ms:
        return text, {}
    preambule = text[:ms[0].start()]
    blocs, i = {}, 0
    while i < len(ms):
        num = int(ms[i].group(1))
        j = i + 1
        while j < len(ms) and int(ms[j].group(1)) == num:
            j += 1
        fin = ms[j].start() if j < len(ms) else len(text)
        blocs[num] = text[ms[i].start():fin]
        i = j
    return preambule, blocs


def bloc(blocs, debut, fin):
    return "".join(blocs.get(n, "") for n in range(debut, fin + 1)).strip()


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
        for i, cfg in enumerate(parts_cfg):
            chap, prefixe = cfg[0], cfg[1]
            titre_ov = cfg[2] if len(cfg) > 2 else ""
            enonce = prefixe + (sujet[i] if i < len(sujet) else "")
            corrige = corr[i] if i < len(corr) else ""
            entries.append({
                "annee": annee, "session": session,
                "numero": f"Problème · Partie {ROMAN[i]}",
                "titre": titre_ov or (titres[i] if i < len(titres) else ""),
                "chapitres": [chap], "enonce": enonce, "corrige": corrige,
                "extrait": True,
            })

    # Découpage par plages de questions (problèmes sans « Partie »).
    for aid, blocs_cfg in CONFIG_Q.items():
        annee, session = META[aid]
        pres, qs = split_questions(corps_probleme(open(os.path.join(ANN, f"annale-{aid}-sujet.md")).read()))
        _, qc = split_questions(corps_probleme(open(os.path.join(ANN, f"annale-{aid}-corrige.md")).read()))
        rappel = re.sub(r"\[FIGURE\]|<img[^>]*>", "", pres).strip()
        for k, (chap, (d, fin), titre) in enumerate(blocs_cfg, 1):
            enonce = (rappel + "\n\n" if rappel else "") + bloc(qs, d, fin)
            entries.append({
                "annee": annee, "session": session,
                "numero": f"Problème · partie {k}",
                "titre": titre, "chapitres": [chap],
                "enonce": enonce, "corrige": bloc(qc, d, fin), "extrait": True,
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
