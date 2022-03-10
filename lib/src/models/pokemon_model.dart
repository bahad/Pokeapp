import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

part 'pokemon_model.g.dart';

@HiveType(typeId: 1)
class PokemonModel extends HiveObject {
  @HiveField(0)
  List<Abilities>? abilities;
  @HiveField(1)
  int? baseExperience;
  @HiveField(2)
  List<GameIndices>? gameIndices;
  @HiveField(3)
  int? height;
  @HiveField(4)
  int? id;
  @HiveField(5)
  bool? isDefault;
  @HiveField(6)
  String? locationAreaEncounters;
  @HiveField(7)
  List<Moves>? moves;
  @HiveField(8)
  String? name;
  @HiveField(9)
  int? order;
  @HiveField(10)
  Ability? species;
  @HiveField(11)
  Sprites? sprites;
  @HiveField(12)
  List<Stats>? stats;
  @HiveField(13)
  List<Types>? types;
  @HiveField(14)
  int? weight;

  PokemonModel(
      {abilities,
      baseExperience,
      gameIndices,
      height,
      id,
      isDefault,
      locationAreaEncounters,
      moves,
      name,
      order,
      species,
      sprites,
      stats,
      types,
      weight});

  PokemonModel.fromJson(Map<String, dynamic> json) {
    if (json['abilities'] != null) {
      abilities = <Abilities>[];
      json['abilities'].forEach((v) {
        abilities!.add(Abilities.fromJson(v));
      });
    }
    baseExperience = json['base_experience'];
    if (json['game_indices'] != null) {
      gameIndices = <GameIndices>[];
      json['game_indices'].forEach((v) {
        gameIndices!.add(GameIndices.fromJson(v));
      });
    }
    height = json['height'];
    id = json['id'];
    isDefault = json['is_default'];
    locationAreaEncounters = json['location_area_encounters'];
    if (json['moves'] != null) {
      moves = <Moves>[];
      json['moves'].forEach((v) {
        moves!.add(Moves.fromJson(v));
      });
    }
    name = json['name'];
    order = json['order'];
    species =
        json['species'] != null ? Ability.fromJson(json['species']) : null;
    sprites =
        json['sprites'] != null ? Sprites.fromJson(json['sprites']) : null;
    if (json['stats'] != null) {
      stats = <Stats>[];
      json['stats'].forEach((v) {
        stats!.add(Stats.fromJson(v));
      });
    }
    if (json['types'] != null) {
      types = <Types>[];
      json['types'].forEach((v) {
        types!.add(Types.fromJson(v));
      });
    }
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (abilities != null) {
      data['abilities'] = abilities!.map((v) => v.toJson()).toList();
    }
    data['base_experience'] = baseExperience;
    if (gameIndices != null) {
      data['game_indices'] = gameIndices!.map((v) => v.toJson()).toList();
    }
    data['height'] = height;

    data['id'] = id;
    data['is_default'] = isDefault;
    data['location_area_encounters'] = locationAreaEncounters;
    if (moves != null) {
      data['moves'] = moves!.map((v) => v.toJson()).toList();
    }
    data['name'] = name;
    data['order'] = order;

    if (species != null) {
      data['species'] = species!.toJson();
    }
    if (sprites != null) {
      data['sprites'] = sprites!.toJson();
    }
    if (stats != null) {
      data['stats'] = stats!.map((v) => v.toJson()).toList();
    }
    if (types != null) {
      data['types'] = types!.map((v) => v.toJson()).toList();
    }
    data['weight'] = weight;
    return data;
  }
}

@HiveType(typeId: 2)
class Abilities {
  @HiveField(0)
  Ability? ability;
  @HiveField(1)
  bool? isHidden;
  @HiveField(2)
  int? slot;

  Abilities({ability, isHidden, slot});

  Abilities.fromJson(Map<String, dynamic> json) {
    ability =
        json['ability'] != null ? Ability.fromJson(json['ability']) : null;
    isHidden = json['is_hidden'];
    slot = json['slot'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (ability != null) {
      data['ability'] = ability!.toJson();
    }
    data['is_hidden'] = isHidden;
    data['slot'] = slot;
    return data;
  }
}

@HiveType(typeId: 3)
class Ability {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? url;

  Ability({name, url});

  Ability.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

@HiveType(typeId: 4)
class GameIndices {
  @HiveField(0)
  int? gameIndex;
  @HiveField(1)
  Ability? version;

  GameIndices({gameIndex, version});

  GameIndices.fromJson(Map<String, dynamic> json) {
    gameIndex = json['game_index'];
    version =
        json['version'] != null ? Ability.fromJson(json['version']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['game_index'] = gameIndex;
    if (version != null) {
      data['version'] = version!.toJson();
    }
    return data;
  }
}

@HiveType(typeId: 5)
class Moves {
  @HiveField(0)
  Ability? move;
  @HiveField(1)
  List<VersionGroupDetails>? versionGroupDetails;

  Moves({move, versionGroupDetails});

  Moves.fromJson(Map<String, dynamic> json) {
    move = json['move'] != null ? Ability.fromJson(json['move']) : null;
    if (json['version_group_details'] != null) {
      versionGroupDetails = <VersionGroupDetails>[];
      json['version_group_details'].forEach((v) {
        versionGroupDetails!.add(VersionGroupDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (move != null) {
      data['move'] = move!.toJson();
    }
    if (versionGroupDetails != null) {
      data['version_group_details'] =
          versionGroupDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

@HiveType(typeId: 6)
class VersionGroupDetails {
  @HiveField(0)
  int? levelLearnedAt;
  @HiveField(1)
  Ability? moveLearnMethod;
  @HiveField(2)
  Ability? versionGroup;

  VersionGroupDetails({levelLearnedAt, moveLearnMethod, versionGroup});

  VersionGroupDetails.fromJson(Map<String, dynamic> json) {
    levelLearnedAt = json['level_learned_at'];
    moveLearnMethod = json['move_learn_method'] != null
        ? Ability.fromJson(json['move_learn_method'])
        : null;
    versionGroup = json['version_group'] != null
        ? Ability.fromJson(json['version_group'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['level_learned_at'] = levelLearnedAt;
    if (moveLearnMethod != null) {
      data['move_learn_method'] = moveLearnMethod!.toJson();
    }
    if (versionGroup != null) {
      data['version_group'] = versionGroup!.toJson();
    }
    return data;
  }
}

@HiveType(typeId: 7)
class Sprites {
  @HiveField(0)
  String? backDefault;
  @HiveField(1)
  String? backShiny;
  @HiveField(2)
  String? frontDefault;
  @HiveField(3)
  String? frontShiny;
  @HiveField(4)
  Other? other;
  @HiveField(5)
  Versions? versions;

  Sprites(
      {backDefault,
      backFemale,
      backShiny,
      backShinyFemale,
      frontDefault,
      frontFemale,
      frontShiny,
      frontShinyFemale,
      other,
      versions});

  Sprites.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backShiny = json['back_shiny'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
    other = json['other'] != null ? Other.fromJson(json['other']) : null;
    versions =
        json['versions'] != null ? Versions.fromJson(json['versions']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['back_default'] = backDefault;
    data['back_shiny'] = backShiny;
    data['front_default'] = frontDefault;
    data['front_shiny'] = frontShiny;
    if (other != null) {
      data['other'] = other!.toJson();
    }
    if (versions != null) {
      data['versions'] = versions!.toJson();
    }
    return data;
  }
}

@HiveType(typeId: 8)
class Other {
  @HiveField(0)
  DreamWorld? dreamWorld;
  @HiveField(1)
  Home? home;
  @HiveField(2)
  OfficialArtwork? officialArtwork;

  Other({dreamWorld, home, officialArtwork});

  Other.fromJson(Map<String, dynamic> json) {
    dreamWorld = json['dream_world'] != null
        ? DreamWorld.fromJson(json['dream_world'])
        : null;
    home = json['home'] != null ? Home.fromJson(json['home']) : null;
    officialArtwork = json['official-artwork'] != null
        ? OfficialArtwork.fromJson(json['official-artwork'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (dreamWorld != null) {
      data['dream_world'] = dreamWorld!.toJson();
    }
    if (home != null) {
      data['home'] = home!.toJson();
    }
    if (officialArtwork != null) {
      data['official-artwork'] = officialArtwork!.toJson();
    }
    return data;
  }
}

@HiveType(typeId: 9)
class DreamWorld {
  @HiveField(0)
  String? frontDefault;

  DreamWorld({frontDefault, frontFemale});
  DreamWorld.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['front_default'] = frontDefault;
    return data;
  }
}

@HiveType(typeId: 10)
class Home {
  @HiveField(0)
  String? frontDefault;
  @HiveField(1)
  String? frontShiny;

  Home({frontDefault, frontFemale, frontShiny, frontShinyFemale});

  Home.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['front_default'] = frontDefault;
    data['front_shiny'] = frontShiny;
    return data;
  }
}

@HiveType(typeId: 11)
class OfficialArtwork {
  @HiveField(0)
  String? frontDefault;

  OfficialArtwork({frontDefault});
  OfficialArtwork.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['front_default'] = frontDefault;
    return data;
  }
}

@HiveType(typeId: 29)
class Versions {
  @HiveField(0)
  GenerationI? generationI;
  @HiveField(1)
  GenerationIi? generationIi;
  @HiveField(2)
  GenerationIii? generationIii;
  @HiveField(3)
  GenerationIv? generationIv;
  @HiveField(4)
  GenerationV? generationV;
  @HiveField(5)
  GenerationVi? generationVi;
  @HiveField(6)
  GenerationVii? generationVii;
  @HiveField(7)
  GenerationViii? generationViii;

  Versions(
      {generationI,
      generationIi,
      generationIii,
      generationIv,
      generationV,
      generationVi,
      generationVii,
      generationViii});

  Versions.fromJson(Map<String, dynamic> json) {
    generationI = json['generation-i'] != null
        ? GenerationI.fromJson(json['generation-i'])
        : null;
    generationIi = json['generation-ii'] != null
        ? GenerationIi.fromJson(json['generation-ii'])
        : null;
    generationIii = json['generation-iii'] != null
        ? GenerationIii.fromJson(json['generation-iii'])
        : null;
    generationIv = json['generation-iv'] != null
        ? GenerationIv.fromJson(json['generation-iv'])
        : null;
    generationV = json['generation-v'] != null
        ? GenerationV.fromJson(json['generation-v'])
        : null;
    generationVi = json['generation-vi'] != null
        ? GenerationVi.fromJson(json['generation-vi'])
        : null;
    generationVii = json['generation-vii'] != null
        ? GenerationVii.fromJson(json['generation-vii'])
        : null;
    generationViii = json['generation-viii'] != null
        ? GenerationViii.fromJson(json['generation-viii'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (generationI != null) {
      data['generation-i'] = generationI!.toJson();
    }
    if (generationIi != null) {
      data['generation-ii'] = generationIi!.toJson();
    }
    if (generationIii != null) {
      data['generation-iii'] = generationIii!.toJson();
    }
    if (generationIv != null) {
      data['generation-iv'] = generationIv!.toJson();
    }
    if (generationV != null) {
      data['generation-v'] = generationV!.toJson();
    }
    if (generationVi != null) {
      data['generation-vi'] = generationVi!.toJson();
    }
    if (generationVii != null) {
      data['generation-vii'] = generationVii!.toJson();
    }
    if (generationViii != null) {
      data['generation-viii'] = generationViii!.toJson();
    }
    return data;
  }
}

@HiveType(typeId: 12)
class GenerationI {
  @HiveField(0)
  RedBlue? redBlue;
  @HiveField(1)
  RedBlue? yellow;

  GenerationI({redBlue, yellow});

  GenerationI.fromJson(Map<String, dynamic> json) {
    redBlue =
        json['red-blue'] != null ? RedBlue.fromJson(json['red-blue']) : null;
    yellow = json['yellow'] != null ? RedBlue.fromJson(json['yellow']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (redBlue != null) {
      data['red-blue'] = redBlue!.toJson();
    }
    if (yellow != null) {
      data['yellow'] = yellow!.toJson();
    }
    return data;
  }
}

@HiveType(typeId: 13)
class RedBlue {
  @HiveField(0)
  String? backDefault;
  @HiveField(1)
  String? backGray;
  @HiveField(2)
  String? backTransparent;
  @HiveField(3)
  String? frontDefault;
  @HiveField(4)
  String? frontGray;
  @HiveField(5)
  String? frontTransparent;

  RedBlue(
      {backDefault,
      backGray,
      backTransparent,
      frontDefault,
      frontGray,
      frontTransparent});

  RedBlue.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backGray = json['back_gray'];
    backTransparent = json['back_transparent'];
    frontDefault = json['front_default'];
    frontGray = json['front_gray'];
    frontTransparent = json['front_transparent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['back_default'] = backDefault;
    data['back_gray'] = backGray;
    data['back_transparent'] = backTransparent;
    data['front_default'] = frontDefault;
    data['front_gray'] = frontGray;
    data['front_transparent'] = frontTransparent;
    return data;
  }
}

@HiveType(typeId: 14)
class GenerationIi {
  @HiveField(0)
  Crystal? crystal;
  @HiveField(1)
  Gold? gold;
  @HiveField(2)
  Gold? silver;

  GenerationIi({crystal, gold, silver});

  GenerationIi.fromJson(Map<String, dynamic> json) {
    crystal =
        json['crystal'] != null ? Crystal.fromJson(json['crystal']) : null;
    gold = json['gold'] != null ? Gold.fromJson(json['gold']) : null;
    silver = json['silver'] != null ? Gold.fromJson(json['silver']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (crystal != null) {
      data['crystal'] = crystal!.toJson();
    }
    if (gold != null) {
      data['gold'] = gold!.toJson();
    }
    if (silver != null) {
      data['silver'] = silver!.toJson();
    }
    return data;
  }
}

@HiveType(typeId: 15)
class Crystal {
  @HiveField(0)
  String? backDefault;
  @HiveField(1)
  String? backShiny;
  @HiveField(2)
  String? backShinyTransparent;
  @HiveField(3)
  String? backTransparent;
  @HiveField(4)
  String? frontDefault;
  @HiveField(5)
  String? frontShiny;
  @HiveField(6)
  String? frontShinyTransparent;
  @HiveField(7)
  String? frontTransparent;

  Crystal(
      {backDefault,
      backShiny,
      backShinyTransparent,
      backTransparent,
      frontDefault,
      frontShiny,
      frontShinyTransparent,
      frontTransparent});

  Crystal.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backShiny = json['back_shiny'];
    backShinyTransparent = json['back_shiny_transparent'];
    backTransparent = json['back_transparent'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
    frontShinyTransparent = json['front_shiny_transparent'];
    frontTransparent = json['front_transparent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['back_default'] = backDefault;
    data['back_shiny'] = backShiny;
    data['back_shiny_transparent'] = backShinyTransparent;
    data['back_transparent'] = backTransparent;
    data['front_default'] = frontDefault;
    data['front_shiny'] = frontShiny;
    data['front_shiny_transparent'] = frontShinyTransparent;
    data['front_transparent'] = frontTransparent;
    return data;
  }
}

@HiveType(typeId: 16)
class Gold {
  @HiveField(0)
  String? backDefault;
  @HiveField(1)
  String? backShiny;
  @HiveField(2)
  String? frontDefault;
  @HiveField(3)
  String? frontShiny;
  @HiveField(4)
  String? frontTransparent;

  Gold({backDefault, backShiny, frontDefault, frontShiny, frontTransparent});

  Gold.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backShiny = json['back_shiny'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
    frontTransparent = json['front_transparent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['back_default'] = backDefault;
    data['back_shiny'] = backShiny;
    data['front_default'] = frontDefault;
    data['front_shiny'] = frontShiny;
    data['front_transparent'] = frontTransparent;
    return data;
  }
}

@HiveType(typeId: 17)
class GenerationIii {
  @HiveField(0)
  Emerald? emerald;
  @HiveField(1)
  FireredLeafgreen? fireredLeafgreen;
  @HiveField(2)
  FireredLeafgreen? rubySapphire;

  GenerationIii({emerald, fireredLeafgreen, rubySapphire});

  GenerationIii.fromJson(Map<String, dynamic> json) {
    emerald =
        json['emerald'] != null ? Emerald.fromJson(json['emerald']) : null;
    fireredLeafgreen = json['firered-leafgreen'] != null
        ? FireredLeafgreen.fromJson(json['firered-leafgreen'])
        : null;
    rubySapphire = json['ruby-sapphire'] != null
        ? FireredLeafgreen.fromJson(json['ruby-sapphire'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (emerald != null) {
      data['emerald'] = emerald!.toJson();
    }
    if (fireredLeafgreen != null) {
      data['firered-leafgreen'] = fireredLeafgreen!.toJson();
    }
    if (rubySapphire != null) {
      data['ruby-sapphire'] = rubySapphire!.toJson();
    }
    return data;
  }
}

@HiveType(typeId: 18)
class Emerald {
  @HiveField(0)
  String? frontDefault;
  @HiveField(1)
  String? frontShiny;

  Emerald({frontDefault, frontShiny});

  Emerald.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['front_default'] = frontDefault;
    data['front_shiny'] = frontShiny;
    return data;
  }
}

@HiveType(typeId: 19)
class FireredLeafgreen {
  @HiveField(0)
  String? backDefault;
  @HiveField(1)
  String? backShiny;
  @HiveField(2)
  String? frontDefault;
  @HiveField(3)
  String? frontShiny;

  FireredLeafgreen({backDefault, backShiny, frontDefault, frontShiny});

  FireredLeafgreen.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backShiny = json['back_shiny'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['back_default'] = backDefault;
    data['back_shiny'] = backShiny;
    data['front_default'] = frontDefault;
    data['front_shiny'] = frontShiny;
    return data;
  }
}

@HiveType(typeId: 20)
class GenerationIv {
  @HiveField(0)
  DiamondPearl? diamondPearl;
  @HiveField(1)
  DiamondPearl? heartgoldSoulsilver;
  @HiveField(2)
  DiamondPearl? platinum;

  GenerationIv({diamondPearl, heartgoldSoulsilver, platinum});

  GenerationIv.fromJson(Map<String, dynamic> json) {
    diamondPearl = json['diamond-pearl'] != null
        ? DiamondPearl.fromJson(json['diamond-pearl'])
        : null;
    heartgoldSoulsilver = json['heartgold-soulsilver'] != null
        ? DiamondPearl.fromJson(json['heartgold-soulsilver'])
        : null;
    platinum = json['platinum'] != null
        ? DiamondPearl.fromJson(json['platinum'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (diamondPearl != null) {
      data['diamond-pearl'] = diamondPearl!.toJson();
    }
    if (heartgoldSoulsilver != null) {
      data['heartgold-soulsilver'] = heartgoldSoulsilver!.toJson();
    }
    if (platinum != null) {
      data['platinum'] = platinum!.toJson();
    }
    return data;
  }
}

@HiveType(typeId: 21)
class DiamondPearl {
  @HiveField(0)
  String? backDefault;
  @HiveField(1)
  String? backShiny;
  @HiveField(2)
  String? frontDefault;
  @HiveField(3)
  String? frontShiny;

  DiamondPearl(
      {backDefault,
      backFemale,
      backShiny,
      backShinyFemale,
      frontDefault,
      frontFemale,
      frontShiny,
      frontShinyFemale});

  DiamondPearl.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backShiny = json['back_shiny'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['back_default'] = backDefault;
    data['back_shiny'] = backShiny;
    data['front_default'] = frontDefault;
    data['front_shiny'] = frontShiny;
    return data;
  }
}

@HiveType(typeId: 22)
class GenerationV {
  @HiveField(0)
  BlackWhite? blackWhite;

  GenerationV({blackWhite});
  GenerationV.fromJson(Map<String, dynamic> json) {
    blackWhite = json['black-white'] != null
        ? BlackWhite.fromJson(json['black-white'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (blackWhite != null) {
      data['black-white'] = blackWhite!.toJson();
    }
    return data;
  }
}

@HiveType(typeId: 23)
class BlackWhite {
  @HiveField(0)
  DiamondPearl? animated;
  @HiveField(1)
  String? backDefault;
  @HiveField(2)
  String? backShiny;
  @HiveField(3)
  String? frontDefault;
  @HiveField(4)
  String? frontShiny;

  BlackWhite(
      {animated,
      backDefault,
      backFemale,
      backShiny,
      backShinyFemale,
      frontDefault,
      frontFemale,
      frontShiny,
      frontShinyFemale});

  BlackWhite.fromJson(Map<String, dynamic> json) {
    animated = json['animated'] != null
        ? DiamondPearl.fromJson(json['animated'])
        : null;
    backDefault = json['back_default'];
    backShiny = json['back_shiny'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (animated != null) {
      data['animated'] = animated!.toJson();
    }
    data['back_default'] = backDefault;
    data['back_shiny'] = backShiny;
    data['front_default'] = frontDefault;
    data['front_shiny'] = frontShiny;
    return data;
  }
}

@HiveType(typeId: 24)
class GenerationVi {
  @HiveField(0)
  Home? omegarubyAlphasapphire;
  @HiveField(1)
  Home? xY;

  GenerationVi({omegarubyAlphasapphire, xY});

  GenerationVi.fromJson(Map<String, dynamic> json) {
    omegarubyAlphasapphire = json['omegaruby-alphasapphire'] != null
        ? Home.fromJson(json['omegaruby-alphasapphire'])
        : null;
    xY = json['x-y'] != null ? Home.fromJson(json['x-y']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (omegarubyAlphasapphire != null) {
      data['omegaruby-alphasapphire'] = omegarubyAlphasapphire!.toJson();
    }
    if (xY != null) {
      data['x-y'] = xY!.toJson();
    }
    return data;
  }
}

@HiveType(typeId: 25)
class GenerationVii {
  @HiveField(0)
  DreamWorld? icons;
  @HiveField(1)
  Home? ultraSunUltraMoon;

  GenerationVii({icons, ultraSunUltraMoon});

  GenerationVii.fromJson(Map<String, dynamic> json) {
    icons = json['icons'] != null ? DreamWorld.fromJson(json['icons']) : null;
    ultraSunUltraMoon = json['ultra-sun-ultra-moon'] != null
        ? Home.fromJson(json['ultra-sun-ultra-moon'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (icons != null) {
      data['icons'] = icons!.toJson();
    }
    if (ultraSunUltraMoon != null) {
      data['ultra-sun-ultra-moon'] = ultraSunUltraMoon!.toJson();
    }
    return data;
  }
}

@HiveType(typeId: 26)
class GenerationViii {
  @HiveField(0)
  DreamWorld? icons;

  GenerationViii({icons});
  GenerationViii.fromJson(Map<String, dynamic> json) {
    icons = json['icons'] != null ? DreamWorld.fromJson(json['icons']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (icons != null) {
      data['icons'] = icons!.toJson();
    }
    return data;
  }
}

@HiveType(typeId: 27)
class Stats {
  @HiveField(0)
  int? baseStat;
  @HiveField(1)
  int? effort;
  @HiveField(2)
  Ability? stat;

  Stats({baseStat, effort, stat});

  Stats.fromJson(Map<String, dynamic> json) {
    baseStat = json['base_stat'];
    effort = json['effort'];
    stat = json['stat'] != null ? Ability.fromJson(json['stat']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['base_stat'] = baseStat;
    data['effort'] = effort;
    if (stat != null) {
      data['stat'] = stat!.toJson();
    }
    return data;
  }
}

@HiveType(typeId: 28)
class Types {
  @HiveField(0)
  int? slot;
  @HiveField(1)
  Ability? type;

  Types({slot, type});

  Types.fromJson(Map<String, dynamic> json) {
    slot = json['slot'];
    type = json['type'] != null ? Ability.fromJson(json['type']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['slot'] = slot;
    if (type != null) {
      data['type'] = type!.toJson();
    }
    return data;
  }
}
