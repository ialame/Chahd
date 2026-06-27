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
94479 si-2019-normale-sujet
110180 si-2019-normale-corrige
110181 si-2019-rattrapage-sujet
110182 si-2019-rattrapage-corrige
110176 si-2020-normale-sujet
110177 si-2020-normale-corrige
110178 si-2020-rattrapage-sujet
110179 si-2020-rattrapage-corrige
127284 si-2021-normale-sujet
136660 si-2021-normale-corrige
136661 si-2021-rattrapage-sujet
136662 si-2021-rattrapage-corrige
136658 si-2022-normale-sujet
136659 si-2022-normale-corrige
136656 si-2022-rattrapage-sujet
136657 si-2022-rattrapage-corrige
142751 si-2023-normale-sujet
142752 si-2023-normale-corrige
142753 si-2023-rattrapage-sujet
142754 si-2023-rattrapage-corrige
145803 si-2024-normale-sujet
145804 si-2024-normale-corrige
145805 si-2024-rattrapage-sujet
145806 si-2024-rattrapage-corrige
145807 si-2025-normale-sujet
145808 si-2025-normale-corrige
145809 si-2025-rattrapage-sujet
145810 si-2025-rattrapage-corrige
147254 francais-1bac-2024-fes-meknes-sujet
147260 francais-1bac-2024-fes-meknes-corrige
147266 francais-1bac-2024-beni-mellal-khenifra-sujet
147272 francais-1bac-2024-beni-mellal-khenifra-corrige
147278 francais-1bac-2024-rabat-sale-kenitra-sujet
147284 francais-1bac-2024-rabat-sale-kenitra-corrige
147290 francais-1bac-2024-draa-tafilalet-sujet
147296 francais-1bac-2024-draa-tafilalet-corrige
147302 francais-1bac-2024-casablanca-settat-sujet
147308 francais-1bac-2024-casablanca-settat-corrige
147314 francais-1bac-2024-marrakech-safi-sujet
147320 francais-1bac-2024-marrakech-safi-corrige
147326 francais-1bac-2024-guelmim-oued-noun-sujet
147332 francais-1bac-2024-guelmim-oued-noun-corrige
147338 francais-1bac-2024-tanger-tetouan-al-hoceima-sujet
147344 francais-1bac-2024-tanger-tetouan-al-hoceima-corrige
147350 francais-1bac-2024-laayoune-sakia-el-hamra-sujet
147356 francais-1bac-2024-laayoune-sakia-el-hamra-corrige
147362 francais-1bac-2024-dakhla-oued-ed-dahab-sujet
147368 francais-1bac-2024-dakhla-oued-ed-dahab-corrige
147374 francais-1bac-2024-souss-massa-sujet
143490 francais-1bac-2022-tanger-tetouan-al-hoceima-sujet
143499 francais-1bac-2022-tanger-tetouan-al-hoceima-corrige
143511 francais-1bac-2022-marrakech-safi-sujet
143517 francais-1bac-2022-marrakech-safi-corrige
143523 francais-1bac-2022-guelmim-oued-noun-sujet
143529 francais-1bac-2022-guelmim-oued-noun-corrige
143535 francais-1bac-2022-laayoune-sakia-el-hamra-sujet
143541 francais-1bac-2022-laayoune-sakia-el-hamra-corrige
143547 francais-1bac-2022-beni-mellal-khenifra-sujet
143553 francais-1bac-2022-beni-mellal-khenifra-corrige
143559 francais-1bac-2022-fes-meknes-sujet
143565 francais-1bac-2022-fes-meknes-corrige
143571 francais-1bac-2022-casablanca-settat-sujet
143577 francais-1bac-2022-casablanca-settat-corrige
143583 francais-1bac-2022-draa-tafilalet-sujet
143589 francais-1bac-2022-draa-tafilalet-corrige
143595 francais-1bac-2022-dakhla-oued-ed-dahab-sujet
143601 francais-1bac-2022-rabat-sale-kenitra-sujet
147152 francais-1bac-2023-guelmim-oued-noun-sujet
147158 francais-1bac-2023-guelmim-oued-noun-corrige
147164 francais-1bac-2023-souss-massa-sujet
147170 francais-1bac-2023-tanger-tetouan-al-hoceima-sujet
147176 francais-1bac-2023-tanger-tetouan-al-hoceima-corrige
147182 francais-1bac-2023-laayoune-sakia-el-hamra-sujet
147188 francais-1bac-2023-laayoune-sakia-el-hamra-corrige
147194 francais-1bac-2023-fes-meknes-sujet
147200 francais-1bac-2023-fes-meknes-corrige
147206 francais-1bac-2023-beni-mellal-khenifra-sujet
147212 francais-1bac-2023-beni-mellal-khenifra-corrige
147218 francais-1bac-2023-draa-tafilalet-sujet
147224 francais-1bac-2023-draa-tafilalet-corrige
147230 francais-1bac-2023-casablanca-settat-sujet
147236 francais-1bac-2023-casablanca-settat-corrige
147242 francais-1bac-2023-dakhla-oued-ed-dahab-sujet
143709 histoire-geo-1bac-2022-oriental-sujet
143712 histoire-geo-1bac-2022-oriental-corrige
143715 histoire-geo-1bac-2022-souss-massa-sujet
143718 histoire-geo-1bac-2022-souss-massa-corrige
143721 histoire-geo-1bac-2022-casablanca-settat-sujet
143724 histoire-geo-1bac-2022-casablanca-settat-corrige
143727 histoire-geo-1bac-2022-draa-tafilalet-sujet
143730 histoire-geo-1bac-2022-draa-tafilalet-corrige
143733 histoire-geo-1bac-2022-rabat-sale-kenitra-sujet
143736 histoire-geo-1bac-2022-rabat-sale-kenitra-corrige
143739 histoire-geo-1bac-2022-beni-mellal-khenifra-sujet
143742 histoire-geo-1bac-2022-beni-mellal-khenifra-corrige
143745 histoire-geo-1bac-2022-fes-meknes-sujet
143748 histoire-geo-1bac-2022-fes-meknes-corrige
143751 histoire-geo-1bac-2022-dakhla-oued-ed-dahab-sujet
143754 histoire-geo-1bac-2022-dakhla-oued-ed-dahab-corrige
143757 histoire-geo-1bac-2022-tanger-tetouan-al-hoceima-sujet
143760 histoire-geo-1bac-2022-tanger-tetouan-al-hoceima-corrige
143763 histoire-geo-1bac-2022-marrakech-safi-sujet
143766 histoire-geo-1bac-2022-marrakech-safi-corrige
143769 histoire-geo-1bac-2022-guelmim-oued-noun-sujet
143772 histoire-geo-1bac-2022-guelmim-oued-noun-corrige
146771 histoire-geo-1bac-2023-draa-tafilalet-sujet
146774 histoire-geo-1bac-2023-draa-tafilalet-corrige
146777 histoire-geo-1bac-2023-casablanca-settat-sujet
146780 histoire-geo-1bac-2023-casablanca-settat-corrige
146783 histoire-geo-1bac-2023-fes-meknes-sujet
146786 histoire-geo-1bac-2023-fes-meknes-corrige
146789 histoire-geo-1bac-2023-beni-mellal-khenifra-sujet
146792 histoire-geo-1bac-2023-beni-mellal-khenifra-corrige
146795 histoire-geo-1bac-2023-laayoune-sakia-el-hamra-sujet
146798 histoire-geo-1bac-2023-laayoune-sakia-el-hamra-corrige
146801 histoire-geo-1bac-2023-oriental-sujet
146804 histoire-geo-1bac-2023-oriental-corrige
146807 histoire-geo-1bac-2023-guelmim-oued-noun-sujet
146810 histoire-geo-1bac-2023-guelmim-oued-noun-corrige
146813 histoire-geo-1bac-2023-tanger-tetouan-al-hoceima-sujet
146816 histoire-geo-1bac-2023-tanger-tetouan-al-hoceima-corrige
146819 histoire-geo-1bac-2023-dakhla-oued-ed-dahab-sujet
146873 histoire-geo-1bac-2024-beni-mellal-khenifra-sujet
146876 histoire-geo-1bac-2024-beni-mellal-khenifra-corrige
146855 histoire-geo-1bac-2024-casablanca-settat-sujet
146858 histoire-geo-1bac-2024-casablanca-settat-corrige
146849 histoire-geo-1bac-2024-draa-tafilalet-sujet
146852 histoire-geo-1bac-2024-draa-tafilalet-corrige
146861 histoire-geo-1bac-2024-fes-meknes-sujet
146864 histoire-geo-1bac-2024-fes-meknes-corrige
146837 histoire-geo-1bac-2024-guelmim-oued-noun-sujet
146840 histoire-geo-1bac-2024-guelmim-oued-noun-corrige
146825 histoire-geo-1bac-2024-laayoune-sakia-el-hamra-sujet
146828 histoire-geo-1bac-2024-laayoune-sakia-el-hamra-corrige
146879 histoire-geo-1bac-2024-marrakech-safi-sujet
146831 histoire-geo-1bac-2024-oriental-sujet
146834 histoire-geo-1bac-2024-oriental-corrige
146867 histoire-geo-1bac-2024-rabat-sale-kenitra-sujet
146870 histoire-geo-1bac-2024-rabat-sale-kenitra-corrige
146843 histoire-geo-1bac-2024-tanger-tetouan-al-hoceima-sujet
146846 histoire-geo-1bac-2024-tanger-tetouan-al-hoceima-corrige
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
