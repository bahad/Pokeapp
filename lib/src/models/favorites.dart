class Favorite {
  int? id;
  String? name;
  String? image;
  int? pokeId;
  String? types;

  Favorite({this.name, this.image, this.pokeId, this.types});
  Favorite.withId({this.id, this.name, this.image, this.pokeId, this.types});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    if (id != null) {
      map["id"] = id;
    }
    map["name"] = name;
    map["image"] = image;
    map["pokeId"] = pokeId;
    map["types"] = types;
    return map;
  }

  Favorite.fromMap(Map<String, dynamic> map) {
    id = map["id"];
    name = map["name"];
    image = map["image"];
    types = map["types"];
    pokeId = map["pokeId"];
  }
}
