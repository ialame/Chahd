<script setup lang="ts">
// Rendu d'un PDF page par page en <canvas> via PDF.js : indépendant du lecteur
// PDF natif du navigateur (s'affiche pareil sur Safari, Chrome, Firefox…).
import * as pdfjs from 'pdfjs-dist'
import workerUrl from 'pdfjs-dist/build/pdf.worker.min.mjs?url'

pdfjs.GlobalWorkerOptions.workerSrc = workerUrl

const props = defineProps<{ url: string }>()
const container = ref<HTMLElement | null>(null)
const loading = ref(true)
const erreur = ref(false)

async function rendre() {
  loading.value = true
  erreur.value = false
  if (container.value) container.value.innerHTML = ''
  try {
    const doc = await pdfjs.getDocument({ url: props.url }).promise
    const largeur = (container.value?.clientWidth || 700) - 16
    for (let n = 1; n <= doc.numPages; n++) {
      const page = await doc.getPage(n)
      const base = page.getViewport({ scale: 1 })
      const echelle = Math.min(2, largeur / base.width) * (window.devicePixelRatio || 1)
      const viewport = page.getViewport({ scale: echelle })
      const canvas = document.createElement('canvas')
      canvas.width = viewport.width
      canvas.height = viewport.height
      canvas.style.width = '100%'
      canvas.style.height = 'auto'
      canvas.className = 'mb-3 rounded border border-slate-200 shadow-sm bg-white'
      container.value!.appendChild(canvas)
      await page.render({ canvasContext: canvas.getContext('2d')!, viewport }).promise
    }
  } catch (e) {
    erreur.value = true
  } finally {
    loading.value = false
  }
}

onMounted(rendre)
watch(() => props.url, rendre)
</script>

<template>
  <div>
    <p v-if="loading" class="py-8 text-center text-sm text-slate-400">
      <i class="fa-solid fa-spinner fa-spin" /> Chargement du sujet…
    </p>
    <p v-if="erreur" class="text-sm text-slate-500">
      Impossible d'afficher le PDF ici.
      <a :href="url" target="_blank" rel="noopener" class="font-semibold text-brand underline">Ouvrir dans un onglet</a>.
    </p>
    <div ref="container" class="max-h-[80vh] overflow-auto rounded-lg bg-slate-100 p-2" />
  </div>
</template>
