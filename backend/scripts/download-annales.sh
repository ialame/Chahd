#!/usr/bin/env bash
# Télécharge les PDF des annales (sujets + corrigés) depuis AlloSchool vers data/annales/.
# Filière Sciences Physiques (PC). Examens nationaux publics, années 2019 -> 2025.
# Usage : depuis backend/ : bash scripts/download-annales.sh
set -euo pipefail

DEST="$(dirname "$0")/../data/annales"
mkdir -p "$DEST"
UA="Mozilla/5.0"
BASE="https://www.alloschool.com"

# element_id  nom_de_fichier_local   (corrigés Maths/PC 2025 non publiés)
MAP="
145811 maths-2024-rattrapage-sujet
145816 maths-2024-rattrapage-corrige
144505 maths-2024-normale-sujet
144510 maths-2024-normale-corrige
142250 maths-2023-rattrapage-sujet
142255 maths-2023-rattrapage-corrige
137482 maths-2023-normale-sujet
137472 maths-2023-normale-corrige
136586 maths-2022-normale-sujet
136803 maths-2022-normale-corrige
136591 maths-2022-rattrapage-sujet
136808 maths-2022-rattrapage-corrige
127180 maths-2021-normale-sujet
136793 maths-2021-normale-corrige
127185 maths-2021-rattrapage-sujet
136798 maths-2021-rattrapage-corrige
109797 maths-2020-normale-sujet
109803 maths-2020-normale-corrige
109808 maths-2020-rattrapage-sujet
109814 maths-2020-rattrapage-corrige
68527 maths-2019-normale-sujet
100965 maths-2019-normale-corrige
106247 maths-2019-rattrapage-sujet
106252 maths-2019-rattrapage-corrige
145826 maths-2025-normale-sujet
145831 maths-2025-rattrapage-sujet
145769 pc-2024-rattrapage-sujet
145772 pc-2024-rattrapage-corrige
145763 pc-2024-normale-sujet
145766 pc-2024-normale-corrige
142484 pc-2023-rattrapage-sujet
142487 pc-2023-rattrapage-corrige
142476 pc-2023-normale-sujet
142479 pc-2023-normale-corrige
136621 pc-2022-normale-sujet
136832 pc-2022-normale-corrige
136624 pc-2022-rattrapage-sujet
136835 pc-2022-rattrapage-corrige
127287 pc-2021-normale-sujet
136826 pc-2021-normale-corrige
127290 pc-2021-rattrapage-sujet
136829 pc-2021-rattrapage-corrige
109742 pc-2020-normale-sujet
109745 pc-2020-normale-corrige
109751 pc-2020-rattrapage-sujet
109757 pc-2020-rattrapage-corrige
68300 pc-2019-normale-sujet
68303 pc-2019-normale-corrige
94419 pc-2019-rattrapage-sujet
94422 pc-2019-rattrapage-corrige
145796 pc-2025-normale-sujet
145799 pc-2025-rattrapage-sujet
145839 svt-2024-rattrapage-sujet
145840 svt-2024-rattrapage-corrige
145837 svt-2024-normale-sujet
145838 svt-2024-normale-corrige
142313 svt-2023-rattrapage-sujet
142314 svt-2023-rattrapage-corrige
142310 svt-2023-normale-sujet
142311 svt-2023-normale-corrige
136762 svt-2022-normale-sujet
136760 svt-2022-normale-corrige
136767 svt-2022-rattrapage-sujet
136765 svt-2022-rattrapage-corrige
127292 svt-2021-normale-sujet
136757 svt-2021-normale-corrige
136759 svt-2021-rattrapage-sujet
136758 svt-2021-rattrapage-corrige
109824 svt-2020-normale-sujet
109825 svt-2020-normale-corrige
109826 svt-2020-rattrapage-sujet
109827 svt-2020-rattrapage-corrige
68265 svt-2019-normale-sujet
68266 svt-2019-normale-corrige
94721 svt-2019-rattrapage-sujet
94722 svt-2019-rattrapage-corrige
145634 svt-2025-normale-sujet
145841 svt-2025-normale-corrige
145842 svt-2025-rattrapage-sujet
145843 svt-2025-rattrapage-corrige
"

echo "$MAP" | while read -r id name; do
  [ -z "$id" ] && continue
  # Extrait l'URL du PDF (forme absolue ou relative) puis normalise.
  pdf=$(curl -s -A "$UA" "$BASE/element/$id" \
        | grep -oiE '(https://www\.alloschool\.com)?/assets/documents/[^"'"'"' ]+\.pdf' | head -1)
  [ -z "$pdf" ] && { echo "  ✗ $name (element/$id) : URL PDF introuvable"; continue; }
  case "$pdf" in http*) url="$pdf";; *) url="$BASE$pdf";; esac
  curl -s -A "$UA" -o "$DEST/$name.pdf" "$url"
  if head -c 4 "$DEST/$name.pdf" | grep -q "%PDF"; then
    echo "  ✓ $name.pdf"
  else
    echo "  ✗ $name : téléchargement invalide"; rm -f "$DEST/$name.pdf"
  fi
done
echo "Terminé : $(ls -1 "$DEST"/*.pdf 2>/dev/null | wc -l | tr -d ' ') fichiers dans $DEST"
