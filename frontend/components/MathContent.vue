<script setup lang="ts">
import katex from 'katex'

const props = defineProps<{ source: string; macros?: Record<string, string> }>()

// Rendu Markdown + LaTeX.
// Stratégie : on rend d'abord chaque formule $...$ / $$...$$ en HTML via KaTeX
// (remplacée par un jeton neutre), PUIS on rend le Markdown, PUIS on réinjecte
// le HTML des formules. Ainsi Markdown ne « casse » jamais le LaTeX (ex: _ , * , \).
// Tout est synchrone => fonctionne aussi côté serveur (SSR).
function renderMath(src: string): string {
  const blocks: string[] = []
  const stash = (tex: string, displayMode: boolean) => {
    const html = katex.renderToString(tex.trim(), {
      displayMode,
      throwOnError: false,
      macros: props.macros ?? {}
    })
    blocks.push(html)
    return `@@KMATH${blocks.length - 1}@@`
  }

  const protectedSrc = src
    .replace(/\$\$([\s\S]+?)\$\$/g, (_m, tex) => stash(tex, true))
    .replace(/\$([^$\n]+?)\$/g, (_m, tex) => stash(tex, false))

  let html = renderMarkdown(protectedSrc)
  html = html.replace(/@@KMATH(\d+)@@/g, (_m, i) => blocks[Number(i)] ?? '')
  return html
}

const html = computed(() => renderMath(props.source))
</script>

<template>
  <div class="prose-fiche math-content" v-html="html" />
</template>

<style scoped>
.math-content :deep(hr) {
  @apply my-6 border-slate-200;
}
.math-content :deep(h1) {
  @apply text-xl font-extrabold text-slate-900 mt-2 mb-3;
}
.math-content :deep(h2) {
  @apply text-lg font-bold text-brand-dark mt-6 mb-2;
}
.math-content :deep(h3) {
  @apply text-base font-semibold text-slate-800 mt-4 mb-1;
}
.math-content :deep(blockquote) {
  @apply border-l-4 border-brand/40 bg-brand/5 px-3 py-1 text-slate-600 my-3 rounded-r;
}
.math-content :deep(.katex) {
  font-size: 1.02em;
}
</style>
