<template>
  <v-card :id="props.itemID" v-if="item.nom" class="mx-auto" width="180" elevation="12" outlined>
    <v-expand-transition>
      <v-img v-if="recto" class="white--text align-end" height="200px" :src="item.image"
        :alt="`Image de ${item.nom}`">
      </v-img>
      <!-- <v-img v-else class="white--text align-end" height="200px" :src="item.image_back"
        :alt="`Image de ${item.nom}`">
      </v-img> -->
      <!-- AGREGAR IMAGEN RETROVERSO-->
    </v-expand-transition>

    <v-card-title>{{ item.nom }}</v-card-title>
    <v-card-subtitle>Prix: {{ item.prix }} <br />En stoke: {{ item.enStok }}</v-card-subtitle>
    <v-card-text>Couleur: {{ item.couleur}}</v-card-text>
    <v-card-text>Taille: {{ item.taille}}</v-card-text>

    <v-card-actions>
      <v-btn v-if="recto" color="teal-accent-4" @click="recto = false">Verso</v-btn>
      <v-btn v-else color="deep-purple accent-4" @click="recto = true">Recto</v-btn>
      <v-spacer></v-spacer>

      <v-btn v-if="caught ? false : true" class="bg-red-accent-4" @click="$emit('catched', item.id); caught = true">
        Ajouter </v-btn>
    </v-card-actions>
  </v-card>


  <v-skeleton-loader v-else type="card, actions" max-width="244" height="372" class="mx-auto"></v-skeleton-loader>
</template>

<script setup>
import { ref, onMounted } from "vue";
import { fetchItem, fetchRandomItem } from "@/services/items.service.js";
import Item from "@/models/Item.js";



const props = defineProps(["itemID", "catchable"]);
defineEmits(['addToCart']);


const recto = ref(true);
const caught = ref(!props.catchable);
const item = ref({});

//
onMounted(() => {
  console.log("TEST BD ID PRODUCT", props.itemID);
  if (!props.itemID){
    console.log("No Items a mostrar");
  } else if (props.itemID === "random") {
    fetchRandomItem().then((data) => {
      console.log("TEST DB RANDOM PRODUCT", data);
      item.value = data;
    });
  } else {
    fetchItem(props.itemID).then((data) => {
      console.log(data);
      item.value = data;
    });
  }
});
</script>

<style scoped></style>
