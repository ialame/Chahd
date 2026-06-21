// État d'authentification : jeton (cookie) + profil utilisateur (état partagé SSR/client).
import type { AuthResponseDto, UtilisateurDto } from '~/types/api'

export const useAuth = () => {
  const token = useCookie<string | null>('chahd_token', {
    maxAge: 60 * 60 * 24 * 7, // 7 jours
    sameSite: 'lax',
    path: '/',
  })
  const user = useState<UtilisateurDto | null>('auth_user', () => null)
  const { get, post } = useApi()

  const estConnecte = computed(() => !!user.value)
  const estAdmin = computed(() => user.value?.role === 'ADMIN')

  /** Recharge le profil depuis le jeton (au démarrage). */
  async function rafraichir() {
    if (!token.value) {
      user.value = null
      return
    }
    try {
      user.value = await get<UtilisateurDto>('/auth/me')
    } catch {
      token.value = null
      user.value = null
    }
  }

  async function connexion(email: string, motDePasse: string) {
    const r = await post<AuthResponseDto>('/auth/login', { email, motDePasse })
    token.value = r.token
    user.value = r.utilisateur
  }

  async function inscription(email: string, motDePasse: string, nom: string) {
    const r = await post<AuthResponseDto>('/auth/register', { email, motDePasse, nom })
    token.value = r.token
    user.value = r.utilisateur
  }

  function deconnexion() {
    token.value = null
    user.value = null
  }

  return { token, user, estConnecte, estAdmin, rafraichir, connexion, inscription, deconnexion }
}
