<template>
  <v-card :id="props.pokemonID" v-if="pokemon.name" class="mx-auto" width="180" elevation="12" outlined>
    <v-expand-transition>
      <v-img v-if="recto" class="white--text align-end" height="200px" :src="pokemon.image"
        :alt="`Image de ${pokemon.name}`">
      </v-img>
      <v-img v-else class="white--text align-end" height="200px" :src="pokemon.image_back"
        :alt="`Image de ${pokemon.name}`">
      </v-img>
    </v-expand-transition>
    <v-card-title>{{ pokemon.name }}</v-card-title>
    <v-card-subtitle>Poids: {{ pokemon.weight }} <br />Taille: {{ pokemon.heigth }}</v-card-subtitle>
    <v-card-text>Types: {{ pokemon.types.join(", ") }}</v-card-text>
    <v-card-actions>
      <v-btn v-if="recto" color="teal-accent-4" @click="recto = false">Verso</v-btn>
      <v-btn v-else color="deep-purple accent-4" @click="recto = true">Recto</v-btn>
      <v-spacer></v-spacer>
      <v-btn v-if="caught ? false : true" class="bg-red-accent-4" @click="$emit('catched', pokemon.id); caught = true">
        Attraper </v-btn>
    </v-card-actions>
  </v-card>
  <v-skeleton-loader v-else type="card, actions" max-width="244" height="372" class="mx-auto"></v-skeleton-loader>
</template>

<script setup>
import { ref, onMounted } from "vue";
import { fetchPokemon, fetchRandomPokemon } from "@/services/pokemon.service.js";

const props = defineProps(["pokemonID", "catchable"]);
defineEmits(['catched']);


const recto = ref(true);
const caught = ref(!props.catchable);

let pokemon = ref({});

//
onMounted(() => {
  console.log("DB RAND 111A", props.pokemonID);

  if (!props.pokemonID){
    // Si pokeID est est undeifned
  } else if (props.pokemonID === "random") {
    fetchRandomPokemon().then((data) => {
      console.log("DB RAND 111", data);
      pokemon.value = data;
    });
  } else {
    fetchPokemon(props.pokemonID).then((data) => {
      console.log(data);
      pokemon.value = data;
    });
  }
});
</script>

<style scoped></style>
