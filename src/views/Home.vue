<template>
  <v-container fluid>
    <v-row>
      <v-col cols="12">
        <!-- Espacio para el contenido principal -->
        <v-card class="mb-5" elevation="2">
          <v-card-text>
            <div class="title-container">
          <!-- Utilizamos el componente v-btn para hacer que la palabra "Magasinez" sea un botón -->
          <h2 class="product-title">Économisez jusqu’à 30 $ sur notre produit. <router-link to="/shop.vue" class="magazine-link">Magasinez</router-link></h2>
        </div>
          </v-card-text>
        </v-card>
      </v-col>
    </v-row>

    <!-- Cuadrado grande para productos -->
    <v-row class="mb-5">
      <v-col cols="12">
        <v-card class="pa-5" elevation="2">
          <v-row>
            <!-- Cuadros para imágenes de productos -->
            <v-col v-for="(product, index) in products" :key="index" cols="3">
              <v-card>
                <!-- Aquí puedes adjuntar las imágenes de los productos -->
                <v-img :src="product.image" aspect-ratio="1"></v-img>
              </v-card>
            </v-col>
          </v-row>
        </v-card>
      </v-col>
    </v-row>

    <v-footer app>
      <!-- Contenido del footer -->
    </v-footer>
  </v-container>
</template>

<script setup>
import { ref } from "vue";
import { RouterLink } from 'vue-router';

const products = ref([
  { image: "src/img/1levi_clothing_men_t_shirts.png" },
  { image: "src/img/4Robe en lin mélangé.jpeg" },
  { image: "src/img/5Casio - A158WA-1D -.jpg" },
  { image: "src/img/7MIchael Kors Sac à main.jpg" }
]);
</script>

<style scoped>
.title-container {
  text-align: center;
  margin-bottom: 20px;
}

.product-title {
  font-size: 24px;
  font-weight: bold;
}

.magazine-link {
  /* Estilos especiales para la palabra "Magasinez" */
  color: #890c82; /* Color rosa */
  text-decoration: underline; /* Subrayado */
  cursor: pointer; /* Cambia el cursor al pasar el ratón */
}
</style>