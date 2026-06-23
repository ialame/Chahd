import type { Config } from 'tailwindcss'

export default <Partial<Config>>{
  theme: {
    extend: {
      colors: {
        brand: {
          DEFAULT: '#8a3324', // bordeaux
          dark: '#6f2819',
          light: '#f6ece9'
        },
        ink: '#2a2320',   // texte fort / titres
        paper: '#faf7f3', // fond de page
        rule: '#ebe3d8',  // bordures / filets
        theo: '#4a7340'   // vert "théorème" / succès
      },
      fontFamily: {
        serif: ['Spectral', 'Georgia', 'serif'],
        sans: ['"IBM Plex Sans"', 'system-ui', 'sans-serif']
      },
      borderRadius: {
        // coins quasi droits, esprit imprimé
        DEFAULT: '2px',
        lg: '3px',
        xl: '4px',
        '2xl': '4px'
      }
    }
  }
}
