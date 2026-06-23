-- Suivi de progression et révision espacée (par utilisateur connecté).

-- Tentatives de QCM : scores persistés côté serveur (auparavant uniquement en localStorage).
CREATE TABLE quiz_tentative (
    id             BIGINT     NOT NULL AUTO_INCREMENT,
    utilisateur_id BIGINT     NOT NULL,
    quiz_id        BIGINT     NOT NULL,
    score          INT        NOT NULL,
    total          INT        NOT NULL,
    note_sur_20    DOUBLE     NOT NULL,
    cree_le        TIMESTAMP  NOT NULL,
    PRIMARY KEY (id),
    INDEX idx_qt_user (utilisateur_id),
    INDEX idx_qt_user_quiz (utilisateur_id, quiz_id),
    CONSTRAINT fk_qt_user FOREIGN KEY (utilisateur_id) REFERENCES utilisateur (id) ON DELETE CASCADE,
    CONSTRAINT fk_qt_quiz FOREIGN KEY (quiz_id) REFERENCES quiz (id) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- État de progression d'une leçon : marquée « lue » ou « à revoir ».
CREATE TABLE lecon_progression (
    id             BIGINT      NOT NULL AUTO_INCREMENT,
    utilisateur_id BIGINT      NOT NULL,
    lecon_id       BIGINT      NOT NULL,
    statut         VARCHAR(16) NOT NULL,            -- LU | A_REVOIR
    maj_le         TIMESTAMP   NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uk_lp (utilisateur_id, lecon_id),
    CONSTRAINT fk_lp_user FOREIGN KEY (utilisateur_id) REFERENCES utilisateur (id) ON DELETE CASCADE,
    CONSTRAINT fk_lp_lecon FOREIGN KEY (lecon_id) REFERENCES lecon (id) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- État de révision espacée (algorithme SM-2) d'une fiche, identifiée par (leçon, index dans le JSON).
CREATE TABLE fiche_revision (
    id                 BIGINT    NOT NULL AUTO_INCREMENT,
    utilisateur_id     BIGINT    NOT NULL,
    lecon_id           BIGINT    NOT NULL,
    fiche_index        INT       NOT NULL,
    repetitions        INT       NOT NULL DEFAULT 0,
    intervalle         INT       NOT NULL DEFAULT 0,    -- en jours
    facilite           DOUBLE    NOT NULL DEFAULT 2.5,  -- facteur de facilité (ease factor)
    derniere_revision  TIMESTAMP NULL,
    prochaine_revision DATE      NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uk_fr (utilisateur_id, lecon_id, fiche_index),
    INDEX idx_fr_due (utilisateur_id, prochaine_revision),
    CONSTRAINT fk_fr_user FOREIGN KEY (utilisateur_id) REFERENCES utilisateur (id) ON DELETE CASCADE,
    CONSTRAINT fk_fr_lecon FOREIGN KEY (lecon_id) REFERENCES lecon (id) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
