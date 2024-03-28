<template>
    <v-footer :app="!mobile" class="footer" elevation="2">
      <!-- Contenido del footer -->
      <v-content>
        Andrea & Osmany 2024
  
        <!-- Botón de "Me gusta" de Facebook -->
        <div id="fb-root"></div>
        <div class="fb-like" data-href="" data-width="" data-layout="button_count" data-action="like" data-size="large" data-share="false"></div>
      </v-content>
    </v-footer>
  </template>
  
  <script setup>
  import { useDisplay } from 'vuetify';
  
  const { mobile } = useDisplay();
  </script>
  
  <style scoped>
  .footer {
    text-align: center;
    background-color: #4f0780;
    color: white;
  }
  </style>
  
