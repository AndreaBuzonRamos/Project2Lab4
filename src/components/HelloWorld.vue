<template>
  <v-container>
    <v-responsive class="d-flex align-center text-center fill-height">
      <div class="text-body-2 font-weight-light mb-n1">Welcome to</div>

      <h1 class="text-h2 font-weight-bold">Vuetify</h1>

      <div class="py-5"/>

      <v-row class="d-flex align-center justify-center">
        <v-col cols="auto"> <v-btn color="primary"> Primary </v-btn> </v-col>
        <v-col cols="auto">
          <v-btn color="secondary"> Secondary </v-btn>
        </v-col>
        <v-col cols="auto"> <v-btn color="error"> Error </v-btn> </v-col>
      </v-row>

      <div class="py-5" />

      <v-row class="d-flex align-center justify-center">
        <v-col cols="4">
          <v-select label="Select Theme" v-model="selectedTheme" :items="myThemes"
            @update:modelValue="setTheme()"></v-select>
        </v-col>
      </v-row>
    </v-responsive>
  </v-container>
</template>

<script setup>
import { ref } from "vue";
import { useTheme } from "vuetify";

const theme = useTheme();
const myThemes = ["light", "dark", "customLightTheme", "customDarkTheme"];
const selectedTheme = ref(myThemes[0]);

const setTheme = () => {
  theme.global.name.value = selectedTheme.value;
  console.log(selectedTheme.value);
};
</script>