# Déploiement de Chahd sur le VPS (bacpp.net)

Pile : **MariaDB + API Spring Boot + Nuxt SSR + Caddy** (HTTPS automatique via Let's Encrypt),
le tout en Docker Compose. VPS dédié : `51.210.40.214`, domaine `bacpp.net`.

## 1. DNS (chez le registrar du domaine)
Créer deux enregistrements **A** pointant vers le VPS :

| Type | Nom   | Valeur          |
|------|-------|-----------------|
| A    | `@`   | `51.210.40.214` |
| A    | `www` | `51.210.40.214` |

Vérifier la propagation : `dig +short bacpp.net` doit renvoyer `51.210.40.214`.
(Caddy ne pourra obtenir le certificat HTTPS qu'une fois le DNS propagé.)

## 2. Préparer le VPS (Ubuntu/Debian)
```bash
# Docker + plugin compose
curl -fsSL https://get.docker.com | sh
sudo usermod -aG docker $USER     # puis se reconnecter

# Pare-feu : ouvrir 80 et 443 (et garder 22)
sudo ufw allow 22 && sudo ufw allow 80 && sudo ufw allow 443 && sudo ufw enable
```

## 3. Récupérer le code
Le dépôt est **privé**. Sur le VPS, s'authentifier (jeton GitHub ou clé SSH de déploiement) :
```bash
gh auth login              # ou configurer une clé SSH de déploiement
git clone https://github.com/ialame/Chahd.git
cd Chahd
```

## 4. Secrets
```bash
cp .env.example .env
nano .env        # mettre des mots de passe forts (DB_PASSWORD, DB_ROOT_PASSWORD)
```

## 5. Lancer
```bash
docker compose -f docker-compose.prod.yml up -d --build
```
- La 1re fois, la construction des images (Maven + Nuxt) peut prendre quelques minutes
  et consommer ~1–1,5 Go de RAM. Sur un petit VPS, créer un swap si besoin.
- Flyway crée le schéma et insère le contenu (cours, exercices, problèmes, annales, QCM)
  au démarrage de l'API.
- Caddy obtient automatiquement le certificat HTTPS.

Ouvrir **https://bacpp.net** 🎉

## 6. Exploitation
```bash
docker compose -f docker-compose.prod.yml ps          # état
docker compose -f docker-compose.prod.yml logs -f api # logs backend
docker compose -f docker-compose.prod.yml logs -f caddy

# Mise à jour après un push
git pull
docker compose -f docker-compose.prod.yml up -d --build

# Sauvegarde de la base
docker compose -f docker-compose.prod.yml exec db \
  sh -c 'mariadb-dump -uroot -p"$MARIADB_ROOT_PASSWORD" chahd' > backup-$(date +%F).sql
```

## Architecture
```
Navigateur ─HTTPS─> Caddy (80/443) ─┬─ /api/* ─> api  (Spring Boot :8081) ─> db (MariaDB)
                                     └─ /*     ─> web  (Nuxt SSR :3000)
SSR : le conteneur web appelle l'API en interne (http://api:8081/api).
Client : appels vers https://bacpp.net/api (même origine, pas de CORS).
```

## Notes
- Le contenu (`.md` + figures SVG) est embarqué dans l'image de l'API (`backend/data/`).
  Après modification du contenu, refaire `up -d --build`.
- La base n'est **pas** exposée au public (pas de port hôte) ; seul Caddy publie 80/443.
- Pour ajuster la mémoire JVM sur un VPS 2 Go : `JAVA_OPTS=-Xmx320m` dans `.env`.
