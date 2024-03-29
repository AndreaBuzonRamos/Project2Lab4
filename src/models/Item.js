export default class Item {
  constructor(id, data) {
    this.id = id;
    this.nom = data.nom;
    this.marque = data.marque;
    this.prix = data.prix;
    this.couleur = data.couleur;
    this.taille = data.taille;
    this.enStock = data.enStock;
    this.materiau = data.materiau;
    this.genre = data.genre;
    this.description = data.description;
    this.image = data.image;
  }
}