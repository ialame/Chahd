<script setup lang="ts">
const links = [
  { to: '/', label: 'Accueil' },
  { to: '/matieres', label: 'Matières' },
  { to: '/annales', label: 'Annales' },
  { to: '/planning', label: 'Planning' }
]
</script>

<template>
  <div class="min-h-screen flex flex-col">
    <header class="sticky top-0 z-10 border-b border-slate-200 bg-white/90 backdrop-blur">
      <div class="mx-auto flex max-w-5xl items-center justify-between px-4 py-3">
        <NuxtLink to="/" class="flex items-center gap-2 text-lg font-bold text-brand-dark">
          <span class="text-2xl">🎓</span> Chahd
        </NuxtLink>
        <nav class="flex items-center gap-1 text-sm">
          <NuxtLink
            v-for="l in links"
            :key="l.to"
            :to="l.to"
            class="rounded-lg px-3 py-1.5 font-medium text-slate-600 hover:bg-slate-100 hover:text-slate-900"
            active-class="!bg-brand/10 !text-brand-dark"
          >
            {{ l.label }}
          </NuxtLink>
        </nav>
      </div>
    </header>

    <main class="mx-auto w-full max-w-5xl flex-1 px-4 py-8">
      <slot />
    </main>

    <footer class="border-t border-slate-200 bg-white">
      <div class="mx-auto max-w-5xl px-4 py-6 text-center text-sm text-slate-500">
        Chahd — réviser et réussir le rattrapage du Bac scientifique 🇲🇦
      </div>
    </footer>
  </div>
</template>
