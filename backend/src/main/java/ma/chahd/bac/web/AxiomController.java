package ma.chahd.bac.web;

import ma.chahd.bac.security.AuthContext;
import ma.chahd.bac.service.AxiomService;
import ma.chahd.bac.web.dto.AxiomChatRequest;
import ma.chahd.bac.web.dto.AxiomChatResponse;
import ma.chahd.bac.web.dto.AxiomProfilDto;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

/** Tuteur IA AXIOM : profil de progression + échange conversationnel (proxy Claude). */
@RestController
@RequestMapping("/api/axiom")
public class AxiomController {

    private final AxiomService axiom;

    public AxiomController(AxiomService axiom) {
        this.axiom = axiom;
    }

    /** Profil AXIOM de l'élève connecté (créé à la volée s'il n'existe pas). */
    @GetMapping("/profil")
    public AxiomProfilDto profil() {
        return axiom.profil(userId());
    }

    /** Met à jour la matière travaillée et les points forts/faibles. */
    @PutMapping("/profil")
    public AxiomProfilDto majProfil(@RequestBody AxiomProfilDto patch) {
        return axiom.majProfil(userId(), patch);
    }

    /** Échange conversationnel avec le tuteur. */
    @PostMapping("/chat")
    public AxiomChatResponse chat(@RequestBody AxiomChatRequest req) {
        return axiom.chat(userId(), req);
    }

    private Long userId() {
        Long id = AuthContext.userId();
        if (id == null) {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Non connecté");
        }
        return id;
    }
}
