<template>
  <v-app-bar app flat elevation="6">
    <v-system-bar></v-system-bar>
    <v-app-bar-title>
      <v-avatar image="/favicon.ico" rounded="0" />
      Exemple de projet
    </v-app-bar-title>
    <template v-slot:append>
      <v-btn class="text-none" stacked to="/Panier">
        <v-badge :content="store.panier.length" color="red" class="rounded ma-2">
          <v-icon icon="mdi-bag-personal-outline"></v-icon>
        </v-badge>
      </v-btn>
      <v-btn class="text-none" stacked @click="drawerOpen = !drawerOpen">
        <v-icon v-if="drawerOpen" icon="mdi-menu-open"></v-icon>
        <v-icon v-else icon="mdi-menu"></v-icon>
      </v-btn>
    </template>
  </v-app-bar>

  <v-navigation-drawer
    v-model="drawerOpen"
    @click="drawerOpen = false"
    app
    permanent
    location="right"
  >
    <v-list>
      <v-list-item title="Home" to="/"></v-list-item>
      <v-list-item title="Pokemon Shop" to="/Pokemon"></v-list-item>

      <v-list-item title="Contact" to="/contact"></v-list-item>
    </v-list>
  </v-navigation-drawer>
</template>

<script setup>
import { ref } from "vue";
import { useAppStore } from "@/store/app";

const drawerOpen = ref(true);
const store = useAppStore();
</script>
