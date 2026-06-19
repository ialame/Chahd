-- Schéma initial de l'application Chahd

CREATE TABLE matiere (
    id          BIGINT       NOT NULL AUTO_INCREMENT,
    slug        VARCHAR(120) NOT NULL,
    nom         VARCHAR(120) NOT NULL,
    coefficient INT          NOT NULL,
    description VARCHAR(600),
    couleur     VARCHAR(16),
    icone       VARCHAR(32),
    ordre       INT          NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    UNIQUE KEY uk_matiere_slug (slug)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE chapitre (
    id         BIGINT       NOT NULL AUTO_INCREMENT,
    matiere_id BIGINT       NOT NULL,
    slug       VARCHAR(120) NOT NULL,
    titre      VARCHAR(200) NOT NULL,
    resume     VARCHAR(600),
    ordre      INT          NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    UNIQUE KEY uk_chapitre_matiere_slug (matiere_id, slug),
    CONSTRAINT fk_chapitre_matiere FOREIGN KEY (matiere_id) REFERENCES matiere (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE fiche (
    id          BIGINT       NOT NULL AUTO_INCREMENT,
    chapitre_id BIGINT       NOT NULL,
    titre       VARCHAR(200) NOT NULL,
    contenu     TEXT         NOT NULL,
    ordre       INT          NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    CONSTRAINT fk_fiche_chapitre FOREIGN KEY (chapitre_id) REFERENCES chapitre (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE quiz (
    id          BIGINT       NOT NULL AUTO_INCREMENT,
    chapitre_id BIGINT       NOT NULL,
    titre       VARCHAR(200) NOT NULL,
    description VARCHAR(600),
    ordre       INT          NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    CONSTRAINT fk_quiz_chapitre FOREIGN KEY (chapitre_id) REFERENCES chapitre (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE question (
    id          BIGINT        NOT NULL AUTO_INCREMENT,
    quiz_id     BIGINT        NOT NULL,
    enonce      VARCHAR(1000) NOT NULL,
    explication VARCHAR(2000),
    ordre       INT           NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    CONSTRAINT fk_question_quiz FOREIGN KEY (quiz_id) REFERENCES quiz (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE choix (
    id          BIGINT       NOT NULL AUTO_INCREMENT,
    question_id BIGINT       NOT NULL,
    texte       VARCHAR(600) NOT NULL,
    correct     BOOLEAN      NOT NULL DEFAULT FALSE,
    ordre       INT          NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    CONSTRAINT fk_choix_question FOREIGN KEY (question_id) REFERENCES question (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE annale (
    id          BIGINT       NOT NULL AUTO_INCREMENT,
    matiere_id  BIGINT       NOT NULL,
    titre       VARCHAR(200) NOT NULL,
    annee       INT          NOT NULL,
    session     VARCHAR(20)  NOT NULL,
    sujet_url   VARCHAR(500),
    corrige_url VARCHAR(500),
    PRIMARY KEY (id),
    CONSTRAINT fk_annale_matiere FOREIGN KEY (matiere_id) REFERENCES matiere (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
