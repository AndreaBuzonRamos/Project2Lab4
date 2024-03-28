<template>
  <v-container>
    <v-card class="contact-card">
      <v-card-title class="contact-title">Informations de contact</v-card-title>
      <v-card-text>
        <v-list>
          <v-list-item>
            <v-list-item-icon>
              <v-icon>mdi-account</v-icon>
            </v-list-item-icon>
            <v-list-item-content>
              <v-list-item-title class="contact-label">Nom:</v-list-item-title>
              <v-list-item-subtitle>Juan Pérez</v-list-item-subtitle>
            </v-list-item-content>
          </v-list-item>

          <v-list-item>
            <v-list-item-icon>
              <v-icon>mdi-email</v-icon>
            </v-list-item-icon>
            <v-list-item-content>
              <v-list-item-title class="contact-label">Email:</v-list-item-title>
              <v-list-item-subtitle>juan@example.com</v-list-item-subtitle>
            </v-list-item-content>
          </v-list-item>

          <v-list-item>
            <v-list-item-icon>
              <v-icon>mdi-phone</v-icon>
            </v-list-item-icon>
            <v-list-item-content>
              <v-list-item-title class="contact-label">Téléphone:</v-list-item-title>
              <v-list-item-subtitle>+123456789</v-list-item-subtitle>
            </v-list-item-content>
          </v-list-item>

          <v-list-item>
            <v-list-item-icon>
              <v-icon>mdi-map-marker</v-icon>
            </v-list-item-icon>
            <v-list-item-content>
              <v-list-item-title class="contact-label">Adresse:</v-list-item-title>
              <v-list-item-subtitle>123 Rue de l'Exemple, Ville, Pays</v-list-item-subtitle>
            </v-list-item-content>
          </v-list-item>
        </v-list>
      </v-card-text>
    </v-card>
  </v-container>
</template>

<script setup>
// Puedes agregar lógica aquí si necesitas
</script>

<style scoped>
.contact-card {
  border-radius: 10px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  padding: 20px;
}

.contact-title {
  font-size: 24px;
  color: #4f0780; /* Color morado */
  text-align: center;
  margin-bottom: 20px;
}

.contact-label {
  font-weight: bold;
}

.contact-icon {
  margin-right: 8px;
  color: #4f0780; /* Color morado */
}
</style>
