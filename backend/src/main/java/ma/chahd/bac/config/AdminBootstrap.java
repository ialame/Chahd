package ma.chahd.bac.config;

import ma.chahd.bac.domain.Role;
import ma.chahd.bac.domain.Utilisateur;
import ma.chahd.bac.repository.UtilisateurRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import java.time.Instant;

/**
 * Crée (ou promeut) le compte admin au démarrage, à partir de app.admin.email/password.
 * Ne fait rien si la config est vide ou si un admin existe déjà.
 */
@Component
public class AdminBootstrap implements ApplicationRunner {

    private static final Logger log = LoggerFactory.getLogger(AdminBootstrap.class);

    private final UtilisateurRepository repository;
    private final String email;
    private final String password;
    private final String nom;

    public AdminBootstrap(UtilisateurRepository repository,
                          @Value("${app.admin.email:}") String email,
                          @Value("${app.admin.password:}") String password,
                          @Value("${app.admin.nom:Admin}") String nom) {
        this.repository = repository;
        this.email = email;
        this.password = password;
        this.nom = nom;
    }

    @Override
    public void run(ApplicationArguments args) {
        if (email.isBlank() || password.isBlank() || repository.existsByRole(Role.ADMIN)) {
            return;
        }
        String mail = email.trim().toLowerCase();
        Utilisateur u = repository.findByEmailIgnoreCase(mail).orElseGet(Utilisateur::new);
        boolean nouveau = u.getId() == null;
        u.setEmail(mail);
        if (u.getNom() == null) u.setNom(nom);
        if (u.getMotDePasseHash() == null) u.setMotDePasseHash(new BCryptPasswordEncoder().encode(password));
        if (u.getCreeLe() == null) u.setCreeLe(Instant.now());
        u.setRole(Role.ADMIN);
        repository.save(u);
        log.info("Compte admin {} : {}", nouveau ? "créé" : "promu", mail);
    }
}
