#!/usr/bin/env bash
# Sauvegarde quotidienne de la base Chahd (dump compressé + rotation 14 jours).
# Installé en cron sur le VPS — voir DEPLOY.md.
set -euo pipefail

cd "$(dirname "$0")/.."                 # racine du dépôt (~/Chahd)
COMPOSE="docker compose -f docker-compose.prod.yml"
mkdir -p backups

TS=$(date +%F-%H%M)
FILE="backups/chahd-${TS}.sql.gz"

# Dump via le conteneur db : le mot de passe et le nom de base sont lus dans
# l'environnement du conteneur (aucun secret en clair dans ce script).
sudo $COMPOSE exec -T db \
  sh -c 'exec mariadb-dump -uroot -p"$MARIADB_ROOT_PASSWORD" --single-transaction --routines --triggers "$MARIADB_DATABASE"' \
  | gzip > "$FILE"

# Rotation : on supprime les sauvegardes de plus de 14 jours.
find backups -name 'chahd-*.sql.gz' -mtime +14 -delete

echo "$(date '+%F %T')  sauvegarde -> ${FILE} ($(du -h "${FILE}" | cut -f1))"
