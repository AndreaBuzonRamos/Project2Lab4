<template>
  <HelloWorld />

  <p v-for="i in names">{{ i }}</p>
</template>

<script setup>
  import HelloWorld from '@/components/HelloWorld.vue'

  const names = ["a", "b", "c"]
</script>
