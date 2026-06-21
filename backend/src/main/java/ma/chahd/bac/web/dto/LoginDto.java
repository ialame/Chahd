package ma.chahd.bac.web.dto;

import jakarta.validation.constraints.NotBlank;

public record LoginDto(@NotBlank String email, @NotBlank String motDePasse) {
}
