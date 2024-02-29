// Utilities
import { defineStore } from "pinia";

export const useAppStore = defineStore("app", {
  state: () => {
    //
    if (localStorage.getItem("panier")) {
      console.log("DB test 456")
      return { panier: JSON.parse(localStorage.getItem("panier")), user: "" };
    }
    return { panier: [], user: "" };
  },
  actions: {
    addToCart(pokemonID) {
      this.panier.push(pokemonID);
      localStorage.setItem("panier", JSON.stringify(this.panier));
    },
    removeFromCart(index) {
      this.panier.splice(index, 1);
      localStorage.setItem("panier", JSON.stringify(this.panier));
    },
    deleteCart() {
      this.panier = [];
      localStorage.removeItem("panier");
    },
  },
});
