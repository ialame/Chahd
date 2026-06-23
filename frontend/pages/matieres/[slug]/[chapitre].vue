<script setup lang="ts">
import type { ChapitreDetailDto } from '~/types/api'

const route = useRoute()
const slug = route.params.slug as string
const chapitreSlug = route.params.chapitre as string
const { get } = useApi()

const { data: chapitre, error } = await useAsyncData(
  `chapitre-${slug}-${chapitreSlug}`,
  () => get<ChapitreDetailDto>(`/matieres/${slug}/chapitres/${chapitreSlug}`)
)

const { scoreQuiz } = useProgression()
</script>

<template>
  <div v-if="error" class="card text-center text-[#a8998a]">
    Chapitre introuvable. <NuxtLink :to="`/matieres/${slug}`" class="text-brand underline">Retour</NuxtLink>
  </div>

  <div v-else-if="chapitre" class="space-y-8">
    <nav class="text-sm text-[#a8998a]">
      <NuxtLink to="/matieres" class="hover:underline">Matières</NuxtLink>
      <span class="mx-1">/</span>
      <NuxtLink :to="`/matieres/${chapitre.matiereSlug}`" class="hover:underline">{{ chapitre.matiereNom }}</NuxtLink>
      <span class="mx-1">/</span>
      <span class="text-[#6b5f57]">{{ chapitre.titre }}</span>
    </nav>

    <header>
      <h1 class="text-2xl font-bold text-ink">{{ chapitre.titre }}</h1>
      <p class="text-[#a8998a]">{{ chapitre.resume }}</p>
    </header>

    <!-- Fiches de révision -->
    <section v-if="chapitre.fiches.length">
      <h2 class="mb-3 text-lg font-bold text-ink"><i class="fa-solid fa-clone text-brand" /> Fiches de révision</h2>
      <div class="space-y-4">
        <article v-for="f in chapitre.fiches" :key="f.id" class="card">
          <h3 class="mb-2 text-base font-bold text-ink">{{ f.titre }}</h3>
          <div class="prose-fiche text-[#6b5f57]" v-html="renderMarkdown(f.contenu)" />
        </article>
      </div>
    </section>

    <!-- Quiz -->
    <section v-if="chapitre.quizzes.length">
      <h2 class="mb-3 text-lg font-bold text-ink"><i class="fa-solid fa-list-check text-brand" /> Quiz d'entraînement</h2>
      <div class="grid gap-3 sm:grid-cols-2">
        <NuxtLink
          v-for="q in chapitre.quizzes"
          :key="q.id"
          :to="`/quiz/${q.id}?matiere=${chapitre.matiereSlug}`"
          class="card flex items-center justify-between transition hover:-translate-y-0.5 hover:shadow-md"
        >
          <div>
            <h3 class="font-semibold text-ink">{{ q.titre }}</h3>
            <p class="text-xs text-[#a8998a]">{{ q.nbQuestions }} question(s)</p>
          </div>
          <span
            v-if="scoreQuiz(q.id)"
            class="rounded-full bg-brand-light px-2.5 py-1 text-xs font-semibold text-brand"
          >{{ scoreQuiz(q.id)!.noteSur20 }}/20</span>
          <span v-else class="text-brand">→</span>
        </NuxtLink>
      </div>
    </section>

    <p v-if="!chapitre.fiches.length && !chapitre.quizzes.length" class="card text-center text-[#a8998a]">
      Contenu de ce chapitre bientôt disponible.
    </p>
  </div>
</template>
