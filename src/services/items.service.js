import Item from "@/models/Item.js"

export const fetchRandomItem = async () => {
  const randId = Math.floor(Math.random() * 151) + 1;
  console.log("DB 88777RAND:", randId)

  const pokemon = await fetchPokemon(randId);
  return Item;
}

