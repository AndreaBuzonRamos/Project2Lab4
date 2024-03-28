import Item from "@/models/item" 

export const fetchRandomItem = async () => {
  const randId = Math.floor(Math.random() * 151) + 1;
  console.log("DB 88777RAND:", randId)

  //ACA PUEDE HABER UN ERROR DANDO QUEE STOY DECLARAND DOS VECES LA VARIABLE item
  const item = await fetchItem(randId);
  return item;
}



//DW ACA HACIA ABAJO ES CODIGO DE OSMANY
const sql = require("mssql");
const Item = require("Item");
const sqlConfig = require("connexion");

export const fetchItem = async (id) => {
  try {
    await sql.connect(sqlConfig);
    const result = await sql.query`select * from PRODUIT where id = ${id}`;
    console.log("Connected to PRODUIT");
    console.log(result);

    if (result.recordset.length > 0) {
      const data = result.recordset[0];
      return new Item(id, {
        nom: data.nom,
        marque: data.marque,
        prix: data.prix,
        couleur: data.couleur,
        taille: data.taille,
        enStock: data.enStock,
        materiau: data.materiau,
        genre: data.genre,
        description: data.description,
        image: data.image,
      });
    } else {
      console.error(`No se encontró un item con id ${id}`);
      return null;
    }
  } catch (error) {
    console.error(`Error al obtener el item con id ${id}:`, error);
    return null;
  } finally {
    sql.close();
  }
};

export const fetchItemsRange = async (start, end) => {
  const itemList = [];
  for (let i = start; i <= end; i++) {
    const article = await fetchItem(i);
    if (article) {
      itemList.push(article);
    }
  }
  return itemList;
};