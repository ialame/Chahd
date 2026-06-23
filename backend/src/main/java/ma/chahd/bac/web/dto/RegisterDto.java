package ma.chahd.bac.web.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public record RegisterDto(
        @Email @NotBlank String email,
        @NotBlank @Size(min = 6, max = 100) String motDePasse,
        @NotBlank @Size(max = 120) String nom,
        String filiere) {
}
