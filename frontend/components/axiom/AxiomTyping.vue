<script setup lang="ts">
// Indicateur de frappe : trois points qui clignotent.
</script>

<template>
  <div class="flex justify-start">
    <div class="flex items-center gap-1 rounded-lg border border-rule bg-white px-4 py-3.5">
      <span class="axiom-dot" style="animation-delay: 0ms" />
      <span class="axiom-dot" style="animation-delay: 160ms" />
      <span class="axiom-dot" style="animation-delay: 320ms" />
    </div>
  </div>
</template>

<style scoped>
.axiom-dot {
  display: inline-block;
  width: 6px;
  height: 6px;
  border-radius: 9999px;
  background-color: #8a3324;
  animation: axiomBlink 1.2s infinite ease-in-out both;
}
@keyframes axiomBlink {
  0%, 80%, 100% { opacity: 0.25; }
  40% { opacity: 1; }
}
</style>
