// Petit client HTTP centralisé pointant vers l'API Spring Boot.
export const useApi = () => {
  const config = useRuntimeConfig()
  // Côté serveur (SSR) : URL interne si fournie (évite de repasser par le domaine
  // public). Côté navigateur : toujours la base publique.
  const baseURL =
    import.meta.server && config.apiBaseSsr ? (config.apiBaseSsr as string) : config.public.apiBase

  const get = <T>(path: string) => $fetch<T>(path, { baseURL })

  const post = <T>(path: string, body: unknown) =>
    $fetch<T>(path, { baseURL, method: 'POST', body })

  // Origine du backend (baseURL sans le suffixe /api)
  const origin = baseURL.replace(/\/api\/?$/, '')

  /** Résout une URL de fichier : absolue (lien externe) telle quelle, relative préfixée par le backend. */
  const fileUrl = (path: string | null): string => {
    if (!path) return ''
    return /^https?:\/\//.test(path) ? path : origin + path
  }

  return { baseURL, origin, get, post, fileUrl }
}
