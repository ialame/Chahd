<script setup lang="ts">
const route = useRoute()
const id = Number(route.params.id)
const matiere = (route.query.matiere as string) || undefined

// QuizRunner publie la question courante dans le contexte ; on nettoie en quittant.
const { reset: resetContexte } = useContexteEtude()
onBeforeUnmount(resetContexte)
</script>

<template>
  <div class="grid grid-cols-1 items-start gap-4 lg:grid-cols-12">
    <div class="min-w-0 lg:col-span-8">
      <QuizRunner :quiz-id="id" :matiere-slug="matiere" />
    </div>
    <aside class="lg:col-span-4 lg:sticky lg:top-20">
      <AxiomAssistant />
    </aside>
  </div>
</template>
