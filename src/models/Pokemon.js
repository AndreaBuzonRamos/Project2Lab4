export default class Pokemon {
    constructor(id, data) {
        this.name = data.name;
        this.id = id;
        this.image = data.sprites.front_default;
        this.image_back = data.sprites.back_default;
        this.types = data.types.map(type  => type.type.name);
        this.weight = data.weight / 10 + " kg"; // hg to kg
        //this.heigth = Number(data.heigth) > 10 ? Number(data.heigth) / 10 + " m" : Number(data.heigth) * 10 + " cm";
    }
}