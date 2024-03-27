import Pokemon from "@/models/Pokemon.js"


export const fetchRandomPokemon = async () => {
  const randId = Math.floor(Math.random() * 151) + 1;
  console.log("DB 88777RAND:", randId)

  const pokemon = await fetchPokemon(randId);
  return pokemon;
}

export const fetchPokemon = async (id) => {
    try {
      const response = await fetch(`https://pokeapi.co/api/v2/pokemon/${id}`);
      const data = await response.json();
      console.log("DB 88777RAND:", id, data)
      return new Pokemon(id, data)
    } catch (error) {
      console.error(`Erreur lors de la récupération du Pokémon ${id} :`, error);
    }
  };
  
  export const fetchPokemonsRange = async (start, end) => {
    const pokemons = [];
    for (let i = start; i <= end; i++) {
      const pokemon = await fetchPokemon(i);
      if (pokemon) {
        pokemons.push(pokemon);
      }
    }
    return pokemons;
  };