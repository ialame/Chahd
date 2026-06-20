-- Suivi d'activité (élève) : chaque ouverture de contenu et chaque QCM validé.
CREATE TABLE activite (
    id        BIGINT       NOT NULL AUTO_INCREMENT,
    visiteur  VARCHAR(64),                       -- identifiant anonyme du navigateur
    type      VARCHAR(32)  NOT NULL,             -- 'ouverture' | 'quiz'
    matiere   VARCHAR(64),
    chapitre  VARCHAR(128),                      -- slug de la leçon
    item      VARCHAR(32),                       -- cours|exercices|problemes|fiches|quiz|annale
    label     VARCHAR(255),
    note      DOUBLE,                            -- note /20 (QCM) ; NULL sinon
    cree_le   TIMESTAMP    NOT NULL,
    PRIMARY KEY (id),
    INDEX idx_activite_cree (cree_le),
    INDEX idx_activite_visiteur (visiteur)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
