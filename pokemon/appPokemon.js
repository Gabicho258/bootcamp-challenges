const getPokemons = async () => {
  const url = `https://pokeapi.co/api/v2/pokemon/`;
  const response = await fetch(url);
  const { results } = await response.json();
  return results;
};
const getPokemonDetails = async ({ url }) => {
  const response = await fetch(url);
  const pokemonDetails = await response.json();
  return pokemonDetails;
};
const renderPokemon = ({ name, abilities, sprites }) => {
  // Creacion del contenedor de cada tarjeta
  const pokemonContainer = document.createElement("div");
  pokemonContainer.classList.add("pokemon");
  // Creación de la imagen y se le añade cada atributo
  const img = document.createElement("img");
  img.src = sprites.front_shiny;
  img.alt = "pokemonIMG";
  // Creación del contenedor del nombre y habilidad
  const pokemonName = document.createElement("p");
  pokemonName.innerText = name;
  const pokemonAbility = document.createElement("p");
  pokemonAbility.innerText = "Ability: " + abilities[0].ability.name;
  //Se añade los objetos HTML creados a la app principal
  pokemonContainer.append(pokemonName, img, pokemonAbility);
  document.getElementById("app").append(pokemonContainer);
};
const initApp = async () => {
  const pokemons = await getPokemons();
  for (let i = 0; i < pokemons.length; i++) {
    const pokemonDetails = await getPokemonDetails(pokemons[i]);
    renderPokemon(pokemonDetails);
  }
};
initApp();
