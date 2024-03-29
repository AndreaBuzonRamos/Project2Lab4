<template>
  <v-container fluid class="d-flex flex-column flex-md-row  flex-start overflow-auto">

    <v-btn @click="store.deleteCart()" color="error" class="ma-1">
      Supprimer le panier
    </v-btn>

    <div class="d-flex flex-column flex-md-row flex-wrap flex-start ga-3">
      <div v-for="(pokeID, index) in store.panier" :key="pokeID">
        <Pokemon :pokemonID="pokeID" :catchable="false" :key="pokeID" />
        <v-btn color="secondary" @click="removeFromCart(index)">Supprimer du panier</v-btn>
      </div>
    </div>
  </v-container>
</template>

<script setup>
import { useAppStore } from "@/store/app";
import Pokemon from "@/components/Pokemon.vue";
/* Ca debrait être: import Item from "@/components/Item.vue et renderiser ces proprietés" */


const store = useAppStore();


function removeFromCart(idx) {
  console.log(event.currentTarget.id)
  store.removeFromCart(idx)

}
</script>

<style scoped></style>
