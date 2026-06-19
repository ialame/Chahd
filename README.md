# Chahd — Réussir le rattrapage du Bac scientifique 🇲🇦

Application web d'aide à la révision pour le **rattrapage du Baccalauréat scientifique** au Maroc.

## Fonctionnalités
- 📚 **Matières** : Mathématiques, Physique-Chimie, SVT, et matières générales (Français, Anglais, Philosophie)
- 📝 **Annales corrigées** : sujets des sessions normale et rattrapage
- ✅ **Quiz / QCM** : entraînement interactif par chapitre, avec score et correction
- 🗂️ **Fiches de révision** : résumés ciblés des notions essentielles
- 📊 **Suivi & planning** : progression, calcul de moyenne, organisation des révisions

## Architecture
| Couche      | Technologie                                            |
|-------------|--------------------------------------------------------|
| Frontend    | Nuxt 3 (Vue 3, TypeScript, Composition API `<script setup>`) |
| Backend     | Spring Boot 3 (Java 21), API REST                      |
| Base        | MariaDB 11 (schéma & données via Flyway)               |

```
Chahd/
├── backend/    → API Spring Boot
├── frontend/   → Application Nuxt
└── docker-compose.yml → MariaDB
```

## Démarrage rapide

### 1. Base de données
```bash
docker compose up -d
```

### 2. Backend (port 8081)
```bash
cd backend
mvn spring-boot:run
```
L'API est sur http://localhost:8081/api. Flyway crée le schéma et les données au démarrage.
> Le port par défaut est 8081 (8080 étant souvent déjà pris). Changez-le avec la variable `SERVER_PORT`.

### 3. Frontend (port 3000)
```bash
cd frontend
npm install
npm run dev
```
L'application est sur http://localhost:3000.

## Annales (PDF)
Les sujets et corrigés des examens nationaux (sciences) sont **hébergés localement** par le backend
et servis sur `/annales/**`. Les fichiers se trouvent dans `backend/data/` (exclu de git).
Pour les (re)télécharger depuis AlloSchool :
```bash
cd backend
bash scripts/download-annales.sh
```
Français et Philosophie pointent vers les archives AlloSchool (examen régional / épreuve en arabe).

## Variables d'environnement
- Backend : voir `backend/src/main/resources/application.yml` (DB par défaut : `localhost:3306/chahd`, user `chahd`/`chahd`).
- Frontend : `NUXT_PUBLIC_API_BASE` (défaut `http://localhost:8081/api`).
