#!/usr/bin/env python3
"""
Classe les exercices/problèmes des annales par chapitre (à partir des titres
thématiques des corrigés) et produit data/bac/maths.json : pour chaque exercice
tombé au bac -> année, session, énoncé, corrigé et chapitre(s) rattaché(s).

Usage : python3 scripts/classer-bac.py
"""
import json
import os
import re

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ANN = os.path.join(BASE, "data", "annales-latex")
OUT = os.path.join(BASE, "data", "bac", "maths.json")

# id annale -> (année, session)
META = {
    23: (2025, "NORMALE"), 24: (2025, "RATTRAPAGE"), 1: (2024, "RATTRAPAGE"),
    2: (2024, "NORMALE"), 3: (2023, "RATTRAPAGE"), 11: (2023, "NORMALE"),
    16: (2022, "RATTRAPAGE"), 15: (2022, "NORMALE"), 17: (2021, "NORMALE"),
    18: (2021, "RATTRAPAGE"), 20: (2020, "RATTRAPAGE"), 19: (2020, "NORMALE"),
    21: (2019, "NORMALE"), 22: (2019, "RATTRAPAGE"),
}

BANNER = re.compile(
    r'<div class="my-5 rounded-lg px-4 py-2\.5 text-white font-bold" '
    r'style="background:#1F4E79">(.*?)</div>', re.DOTALL)

# Annales dont le PROBLÈME est découpé en parties (voir decouper-bac.py) :
# on n'émet pas l'entrée « problème entier » pour elles.
PROBLEMES_DECOUPES = {23, 1, 2, 20, 24}

def primaire(titre, contenu, est_probleme):
    """Chapitre PRINCIPAL (unique).
    Thèmes nets par le titre (géométrie/complexes/probas/suites). Un PROBLÈME va à
    la fonction étudiée (exp/log). Un EXERCICE va au thème explicite de son titre
    (intégrale, limites, dérivation), sinon à exp/log selon le contenu."""
    t = titre.lower()
    if any(w in t for w in ["géométrie", "espace"]):
        return "geometrie-espace"
    if "complexe" in t:
        return "nombres-complexes"
    if "probabilit" in t:
        return "probabilites"
    if "dénombrement" in t:
        return "denombrement"
    if "suite" in t and not any(w in t for w in ["fonction", "étude", "exponen", "logar", "intégr", "aire"]):
        return "recurrence-suites"

    c = contenu
    n_ln = c.count("\\ln")
    n_exp = c.count("e^{") + c.count("\\exp") + c.count("e^x")

    # Problème : chapitre principal = la fonction étudiée.
    if est_probleme:
        if n_exp >= 1 and n_exp >= n_ln:
            return "exponentielle"
        if n_ln >= 1:
            return "logarithme"
        return "derivation-convexite"

    # Exercice : on privilégie le thème explicite du titre.
    if any(w in t for w in ["intégr", "équation différentielle", "primitive", "aire"]):
        return "primitives-integration"
    if any(w in t for w in ["croissances comparées", "t.v.i", "tvi", "limite", "continuité"]):
        return "limites-continuite"
    if any(w in t for w in ["inflexion", "minimum", "maximum", "tangente", "convexit", "variation", "optimis"]):
        return "derivation-convexite"
    if n_exp >= 1 and n_exp >= n_ln:
        return "exponentielle"
    if n_ln >= 1:
        return "logarithme"
    if "suite" in t:
        return "recurrence-suites"
    return "derivation-convexite"


def cle(titre):
    m = re.search(r"[Ee]xercice\s*(\d+)", titre)
    if m:
        return "ex" + m.group(1)
    if re.search(r"[Pp]robl", titre):
        return "probleme"
    return titre.strip().lower()


def titre_court(banner_inner):
    return re.sub(r"<span.*?</span>", "", banner_inner, flags=re.DOTALL).strip()


def decouper(md):
    """-> liste de (cle, titre, corps) selon les bandeaux."""
    matches = list(BANNER.finditer(md))
    out = []
    for i, m in enumerate(matches):
        start = m.end()
        end = matches[i + 1].start() if i + 1 < len(matches) else len(md)
        t = titre_court(m.group(1))
        out.append((cle(t), t, md[start:end].strip()))
    return out


def main():
    entries = []
    for aid, (annee, session) in META.items():
        fs = os.path.join(ANN, f"annale-{aid}-sujet.md")
        fc = os.path.join(ANN, f"annale-{aid}-corrige.md")
        if not (os.path.exists(fs) and os.path.exists(fc)):
            continue
        sujet = {k: corps for k, _, corps in decouper(open(fs, encoding="utf-8").read())}
        for k, titre, corrige in decouper(open(fc, encoding="utf-8").read()):
            numero = titre.split("—")[0].strip()
            theme = titre.split("—", 1)[1].strip() if "—" in titre else titre
            enonce = sujet.get(k, "")
            est_probleme = "robl" in numero.lower()
            if est_probleme and aid in PROBLEMES_DECOUPES:
                continue  # remplacé par ses parties (parties-maths.json)
            chs = [primaire(titre, enonce + " " + corrige, est_probleme)]
            entries.append({
                "annaleId": aid, "annee": annee, "session": session,
                "numero": numero, "titre": theme, "chapitres": chs,
                "enonce": enonce, "corrige": corrige,
            })
    os.makedirs(os.path.dirname(OUT), exist_ok=True)
    with open(OUT, "w", encoding="utf-8") as f:
        json.dump(entries, f, ensure_ascii=False)
    print(f"✓ {OUT} : {len(entries)} exercices classés")
    # Résumé par chapitre
    from collections import Counter
    c = Counter()
    for e in entries:
        for s in e["chapitres"]:
            c[s] += 1
    print("Par chapitre :")
    for s, n in sorted(c.items(), key=lambda x: -x[1]):
        print(f"  {s:<24} {n}")
    sans = [e for e in entries if not e["chapitres"]]
    if sans:
        print("⚠️ Non classés :")
        for e in sans:
            print(f"  {e['annee']} {e['session']} {e['numero']} — {e['titre']}")


if __name__ == "__main__":
    main()
