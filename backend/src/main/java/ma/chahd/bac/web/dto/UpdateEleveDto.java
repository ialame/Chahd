package ma.chahd.bac.web.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

/** Modification d'un élève par l'admin (nom obligatoire, email optionnel). */
public record UpdateEleveDto(
        @NotBlank @Size(max = 120) String nom,
        @Email String email) {
}
