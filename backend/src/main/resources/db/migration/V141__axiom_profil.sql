-- AXIOM (tuteur IA) : profil de progression par élève.
-- L'historique de conversation n'est PAS stocké (il vit côté client) ; seuls le score,
-- le nombre de sessions, la matière courante et les points forts/faibles sont persistés.

CREATE TABLE axiom_profil (
    id                BIGINT AUTO_INCREMENT PRIMARY KEY,
    utilisateur_id    BIGINT NOT NULL UNIQUE,
    prenom            VARCHAR(120),
    matiere           VARCHAR(120),
    sessions          INT NOT NULL DEFAULT 0,
    score             INT NOT NULL DEFAULT 0,
    points_forts      TEXT,
    points_faibles    TEXT,
    derniere_session  DATETIME NULL,
    cree_le           DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    maj_le            DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_axiom_utilisateur FOREIGN KEY (utilisateur_id)
        REFERENCES utilisateur (id) ON DELETE CASCADE
);
