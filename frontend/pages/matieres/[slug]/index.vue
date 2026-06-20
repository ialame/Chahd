<script setup lang="ts">
import type { MatiereDetailDto, LeconDto } from '~/types/api'

const route = useRoute()
const slug = route.params.slug as string
const { get } = useApi()

const { data: matiere, error } = await useAsyncData(
  `matiere-${slug}`,
  () => get<MatiereDetailDto>(`/matieres/${slug}`)
)

const { data: cours } = await useAsyncData(
  `cours-${slug}`,
  () => get<LeconDto[]>(`/matieres/${slug}/cours`)
)

const { moyenneParMatiere } = useProgression()
const moyenne = computed(() => (matiere.value ? moyenneParMatiere(matiere.value.slug) : null))

const sessionLabel = (s: string) => (s === 'RATTRAPAGE' ? 'Rattrapage' : 'Normale')
</script>

<template>
  <div v-if="error" class="card text-center text-slate-500">
    Matière introuvable. <NuxtLink to="/matieres" class="text-brand-dark underline">Retour aux matières</NuxtLink>
  </div>

  <div v-else-if="matiere" class="space-y-8">
    <nav class="text-sm text-slate-500">
      <NuxtLink to="/matieres" class="hover:underline">Matières</NuxtLink>
      <span class="mx-1">/</span>
      <span class="text-slate-700">{{ matiere.nom }}</span>
    </nav>

    <header class="card flex flex-wrap items-center gap-4">
      <span
        class="flex h-14 w-14 items-center justify-center rounded-xl text-3xl"
        :style="{ backgroundColor: (matiere.couleur ?? '#0d9488') + '1a' }"
      >{{ matiere.icone ?? '📘' }}</span>
      <div class="flex-1">
        <h1 class="text-2xl font-bold text-slate-900">{{ matiere.nom }}</h1>
        <p class="text-sm text-slate-500">Coefficient {{ matiere.coefficient }} · {{ matiere.description }}</p>
      </div>
      <span
        v-if="moyenne !== null"
        class="rounded-full bg-brand/10 px-3 py-1 text-sm font-semibold text-brand-dark"
      >Moyenne QCM : {{ moyenne }}/20</span>
    </header>

    <!-- Cours (livre) -->
    <section v-if="cours && cours.length">
      <h2 class="mb-3 text-lg font-bold text-slate-900">📘 Cours complet</h2>
      <ol class="grid gap-2 sm:grid-cols-2">
        <li v-for="(l, i) in cours" :key="l.id">
          <NuxtLink
            v-if="l.aContenu"
            :to="`/cours/${l.id}`"
            class="card flex items-center gap-3 transition hover:-translate-y-0.5 hover:shadow-md"
          >
            <span class="flex h-7 w-7 flex-none items-center justify-center rounded-full bg-brand/10 text-xs font-bold text-brand-dark">{{ i + 1 }}</span>
            <span class="flex-1 font-medium text-slate-800">{{ l.titre }}</span>
            <span class="text-brand-dark">→</span>
          </NuxtLink>
          <div v-else class="card flex items-center gap-3 opacity-60">
            <span class="flex h-7 w-7 flex-none items-center justify-center rounded-full bg-slate-100 text-xs font-bold text-slate-400">{{ i + 1 }}</span>
            <span class="flex-1 font-medium text-slate-500">{{ l.titre }}</span>
            <span class="text-xs text-slate-400">à venir</span>
          </div>
        </li>
      </ol>
    </section>

    <!-- Chapitres -->
    <section>
      <h2 class="mb-3 text-lg font-bold text-slate-900">Chapitres</h2>
      <div class="grid gap-3 sm:grid-cols-2">
        <NuxtLink
          v-for="c in matiere.chapitres"
          :key="c.id"
          :to="`/matieres/${matiere.slug}/${c.slug}`"
          class="card transition hover:-translate-y-0.5 hover:shadow-md"
        >
          <h3 class="font-semibold text-slate-900">{{ c.titre }}</h3>
          <p class="mt-1 line-clamp-2 text-sm text-slate-600">{{ c.resume }}</p>
          <div class="mt-3 flex gap-3 text-xs text-slate-500">
            <span>🗂️ {{ c.nbFiches }} fiche(s)</span>
            <span>✅ {{ c.nbQuiz }} quiz</span>
          </div>
        </NuxtLink>
      </div>
    </section>

    <!-- Annales -->
    <section v-if="matiere.annales.length">
      <h2 class="mb-3 text-lg font-bold text-slate-900">Annales</h2>
      <ul class="divide-y divide-slate-100 overflow-hidden rounded-xl bg-white ring-1 ring-slate-100">
        <li v-for="a in matiere.annales" :key="a.id" class="flex items-center justify-between gap-3 px-4 py-3">
          <div>
            <p class="font-medium text-slate-800">{{ a.titre }}</p>
            <p class="text-xs text-slate-500">
              {{ a.annee }} ·
              <span :class="a.session === 'RATTRAPAGE' ? 'text-amber-600' : 'text-slate-500'">
                Session {{ sessionLabel(a.session) }}
              </span>
            </p>
          </div>
          <div class="flex flex-wrap items-center gap-2 text-sm">
            <NuxtLink v-if="a.aContenu" :to="`/annales/${a.id}`" class="btn-primary">📄 Lire</NuxtLink>
            <span v-else class="text-xs text-slate-400">Bientôt</span>
          </div>
        </li>
      </ul>
    </section>
  </div>
</template>
