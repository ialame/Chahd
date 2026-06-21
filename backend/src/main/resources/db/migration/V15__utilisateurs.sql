-- Comptes utilisateurs (élèves + admin) et rattachement du suivi.
CREATE TABLE utilisateur (
    id                BIGINT AUTO_INCREMENT PRIMARY KEY,
    email             VARCHAR(190) NOT NULL UNIQUE,
    mot_de_passe_hash VARCHAR(100) NOT NULL,
    nom               VARCHAR(120) NOT NULL,
    role              VARCHAR(20)  NOT NULL DEFAULT 'ELEVE',
    cree_le           TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Une activité peut désormais être rattachée à un utilisateur connecté.
ALTER TABLE activite
    ADD COLUMN utilisateur_id BIGINT NULL,
    ADD CONSTRAINT fk_activite_utilisateur
        FOREIGN KEY (utilisateur_id) REFERENCES utilisateur(id) ON DELETE SET NULL;
