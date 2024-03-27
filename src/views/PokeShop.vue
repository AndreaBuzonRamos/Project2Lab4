<template>
  <v-content class="d-flex justify-start align-start flex-row w-100">
    <div class="slider d-flex flex-row">
      <v-slider
        v-model="sliderValue"
        :min="minSliderValue"
        :max="maxSliderValue"
        :step="sliderStep"
        direction="vertical"
      >
        <template v-slot:prepend>
          <v-btn
            size="small"
            variant="text"
            icon="mdi-minus"
            @click="modifySlider('minus')"
          ></v-btn>
        </template>

        <template v-slot:append>
          <v-btn
            size="small"
            variant="text"
            icon="mdi-plus"
            @click="modifySlider('plus')"
          ></v-btn>
        </template>
      </v-slider>
    </div>

    <div class="d-flex justify-center align-center flex-column w-100">
      <v-btn
        @click="pokemonRandomSeed = Math.floor(pokemonRandomSeed + Math.random()*100)"
        class="w-75 bg-red cursor-grab"
      >
        Attrapez des Pokemons
      </v-btn>

      <v-container class="d-flex flex-row justify-start flex-wrap" :key="pokemonID">
        <v-fab-transition group>
          <Pokemon
            v-for="i in sliderValue"
            pokemonID="random"
            :catchable="true"
            @catched="addToCart"
            :key="i + pokemonRandomSeed"
            class="ma-3"
          />
        </v-fab-transition>
      </v-container>
    </div>
  </v-content>
</template>

<script setup>
import { ref, onMounted } from "vue";
import { useAppStore } from "@/store/app";
import Pokemon from "@/components/Pokemon.vue";

onMounted(() => {
});

// Store

const store = useAppStore();

const addToCart = (id) => {
  console.log("DB 88: ", id);
  store.addToCart(id);
  // console.log("DB 558: ");
};

//

const pokemonRandomSeed = ref(1);

// Slider
const minSliderValue = 3;
const maxSliderValue = 7;
const sliderStep = 2;
const sliderValue = ref(5);

const modifySlider = (op) => {
  if (op === "plus") {
    if (sliderValue.value === maxSliderValue) {
      return;
    }
    sliderValue.value += sliderStep;
  } else if (op === "minus") {
    if (sliderValue.value === minSliderValue) {
      return;
    }
    sliderValue.value -= sliderStep;
  }
};

</script>

<style scoped>
.slider {
  width: 80px;
}

.slider >>> .v-slider {
  height: auto;
  width: 50px;
}
</style>
