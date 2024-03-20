
export const fetchPokemon = async (id) => {
    try {
      const response = await fetch(`https://pokeapi.co/api/v2/pokemon/${id}`);
      const data = await response.json();
      return {
        name: data.name,
        id: id,
        image: data.sprites.front_default,
        image_back: data.sprites.back_default,
        types: data.types.map(type => type.type.name),
        weight: data.weight / 10 + " kg", // hg to kg
        heigth: data.heigth > 10 ? data.heigth / 10 + "m" : data.heigth * 10 + "cm" ,
      };
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