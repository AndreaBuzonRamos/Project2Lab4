<template>
  <v-footer :app="!mobile" class="footer" elevation="2">
    <!-- Contenido del footer -->
    <v-content>
      <div class="footer-content">
        <!-- Texto de derechos reservados en la parte izquierda -->
        <div class="left-content">
          <p>Tous droits réservés © 2024 Andrea & Osmany</p>
        </div>

        <!-- Iconos de redes sociales en la parte derecha -->
        <div class="right-content">
          <a href="https://facebook.com/miempresa" class="social-icon"><i class="fab fa-facebook"></i></a>
          <a href="https://twitter.com/miempresa" class="social-icon"><i class="fab fa-twitter"></i></a>
          <a href="https://instagram.com/miempresa" class="social-icon"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
    </v-content>
  </v-footer>
</template>

<script setup>
import { useDisplay } from 'vuetify';
import '@fortawesome/fontawesome-free/css/all.css';

const { mobile } = useDisplay();
</script>

<style scoped>
.footer {
  text-align: center;
  background-color: #4f0780;
  color: white;
}

.footer-content {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.left-content {
  /* Estilos para la parte izquierda */
}

.right-content {
  /* Estilos para la parte derecha */
}

.social-icon {
  color: white;
  margin-left: 10px;
}

.social-icon:hover {
  color: #CCCCCC;
  /* Cambia el color al pasar el mouse */
}
</style>
