// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2025-01-01',
  devtools: { enabled: true },
  modules: ['@nuxtjs/tailwindcss'],
  css: ['katex/dist/katex.min.css', '~/assets/css/main.css'],
  runtimeConfig: {
    // Base API utilisée côté serveur (SSR). En prod : URL interne du réseau Docker
    // (http://api:8081/api) via NUXT_API_BASE_SSR. Vide => on retombe sur la base publique.
    apiBaseSsr: '',
    public: {
      // Surchargeable via NUXT_PUBLIC_API_BASE (utilisée côté navigateur).
      apiBase: 'http://localhost:8081/api'
    }
  },
  app: {
    head: {
      htmlAttrs: { lang: 'fr' },
      title: 'Chahd — Réussir le rattrapage du Bac scientifique',
      meta: [
        { charset: 'utf-8' },
        { name: 'viewport', content: 'width=device-width, initial-scale=1' },
        { name: 'description', content: 'Réviser et réussir le rattrapage du Baccalauréat scientifique au Maroc : annales, quiz, fiches et planning.' }
      ],
      link: [
        // Icônes des cartes de cours (Définition/Théorème/…)
        { rel: 'stylesheet', href: 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css' },
        // Polices Direction C : Spectral (titres) + IBM Plex Sans (corps)
        { rel: 'preconnect', href: 'https://fonts.googleapis.com' },
        { rel: 'preconnect', href: 'https://fonts.gstatic.com', crossorigin: '' },
        {
          rel: 'stylesheet',
          href: 'https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500&family=IBM+Plex+Sans:wght@400;500;600;700&display=swap'
        }
      ]
    }
  }
})
