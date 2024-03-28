<template>
  <v-app-bar app flat elevation="4">
    <v-system-bar></v-system-bar>
    <!-- <v-app-bar-nav-icon @click.stop="drawerOpen = !drawerOpen"></v-app-bar-nav-icon> -->
    <v-app-bar-title>
      <v-avatar image="/Users/andrea/Documents/GitHub/Project2Lab4/src/img/avatar.avif" style="width: 80px; height: 80px; border-radius: 0;" />
      🤩 Boutique en Ligne PRUEBA BRANCH 🛒
    </v-app-bar-title>

    <v-row align="center" justify="end" class="fill-height">
      <v-col>
        <v-list-item title="Accueil" to="/"></v-list-item>
      </v-col>
      <v-col>
        <v-list-item title="Boutique" to="/Pokemon"></v-list-item>
      </v-col>
      <v-col>
        <v-list-item title="Contact" to="/contact"></v-list-item>
      </v-col>
    </v-row>

    <template v-slot:append>
      <v-btn class="text-none" stacked to="/Panier">
        <v-badge :content="store.panier.length" color="red" class="rounded ma-2">
          <v-icon icon="mdi-cart-outline"></v-icon>
        </v-badge>
      </v-btn>
    </template>
  </v-app-bar>
</template>

<script setup>
import { ref } from "vue";
import { useAppStore } from "@/store/app";

const drawerOpen = ref(false);
const store = useAppStore();
</script>

