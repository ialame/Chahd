<script setup lang="ts">
const route = useRoute()
const id = Number(route.params.id)
const matiere = (route.query.matiere as string) || undefined
</script>

<template>
  <div class="mx-auto max-w-2xl">
    <QuizRunner :quiz-id="id" :matiere-slug="matiere" />
  </div>
</template>
