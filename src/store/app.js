// Utilities
import { defineStore } from "pinia";

export const useAppStore = defineStore("app", {
  state: () => {
    //
    if (localStorage.getItem("panier")) {
      return { panier: JSON.parse(localStorage.getItem("panier")), user: "Prof" };
    }
    return { panier: [], user: "Prof" };
  },
  actions: {
    addToCart(itemID) {
      this.panier.push(itemID);
      localStorage.setItem("panier", JSON.stringify(this.panier));
    },
    removeFromCart(index) {
      // const index = this.panier.indexOf(Number(pokemonID))
      this.panier.splice(index, 1);
      localStorage.setItem("panier", JSON.stringify(this.panier));
    },
    deleteCart() {
      this.panier = [];
      localStorage.removeItem("panier");
    },
  },
});
