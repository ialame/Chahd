package ma.chahd.bac.web.dto;

import java.util.List;

/**
 * Requête d'échange avec AXIOM. Le profil (score, sessions, points) n'est PAS transmis
 * par le client : il est la source de vérité côté serveur (anti-triche).
 *
 * @param matiere  slug de la matière travaillée (optionnel ; conserve la valeur stockée sinon)
 * @param messages historique de conversation (les 20 derniers max, gérés côté client)
 */
public record AxiomChatRequest(String matiere, List<AxiomMessage> messages) {}
