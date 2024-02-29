<template>
    <v-container fluid class="d-flex flex-column flex-md-row  flex-start overflow-auto">

      <v-btn @click="store.deleteCart()" color="error" class="ma-1">
        Supprimer le panier
      </v-btn>

      <div class="d-flex flex-column flex-md-row flex-wrap flex-start ga-3">
        <Pokemon
          v-for="pokeID in store.panier"
          :pokemonID="pokeID"
          :catchable="false"
          :key="pokeID"
        />
      </div>
    </v-container>
</template>

<script setup>
import { useAppStore } from "@/store/app";
import Pokemon from "@/components/Pokemon.vue";

const store = useAppStore();
</script>

<style scoped></style>
