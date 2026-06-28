package ma.chahd.bac.web.dto;

/** Un message de l'historique de conversation AXIOM. role = "user" | "assistant". */
public record AxiomMessage(String role, String content) {}
