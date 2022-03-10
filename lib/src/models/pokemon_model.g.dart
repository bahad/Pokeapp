// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonModelAdapter extends TypeAdapter<PokemonModel> {
  @override
  final int typeId = 1;

  @override
  PokemonModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonModel(
      abilities: fields[0] as dynamic,
      baseExperience: fields[1] as dynamic,
      gameIndices: fields[2] as dynamic,
      height: fields[3] as dynamic,
      id: fields[4] as dynamic,
      isDefault: fields[5] as dynamic,
      locationAreaEncounters: fields[6] as dynamic,
      moves: fields[7] as dynamic,
      name: fields[8] as dynamic,
      order: fields[9] as dynamic,
      species: fields[10] as dynamic,
      sprites: fields[11] as dynamic,
      stats: fields[12] as dynamic,
      types: fields[13] as dynamic,
      weight: fields[14] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, PokemonModel obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.abilities)
      ..writeByte(1)
      ..write(obj.baseExperience)
      ..writeByte(2)
      ..write(obj.gameIndices)
      ..writeByte(3)
      ..write(obj.height)
      ..writeByte(4)
      ..write(obj.id)
      ..writeByte(5)
      ..write(obj.isDefault)
      ..writeByte(6)
      ..write(obj.locationAreaEncounters)
      ..writeByte(7)
      ..write(obj.moves)
      ..writeByte(8)
      ..write(obj.name)
      ..writeByte(9)
      ..write(obj.order)
      ..writeByte(10)
      ..write(obj.species)
      ..writeByte(11)
      ..write(obj.sprites)
      ..writeByte(12)
      ..write(obj.stats)
      ..writeByte(13)
      ..write(obj.types)
      ..writeByte(14)
      ..write(obj.weight);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AbilitiesAdapter extends TypeAdapter<Abilities> {
  @override
  final int typeId = 2;

  @override
  Abilities read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Abilities(
      ability: fields[0] as dynamic,
      isHidden: fields[1] as dynamic,
      slot: fields[2] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Abilities obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.ability)
      ..writeByte(1)
      ..write(obj.isHidden)
      ..writeByte(2)
      ..write(obj.slot);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AbilitiesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AbilityAdapter extends TypeAdapter<Ability> {
  @override
  final int typeId = 3;

  @override
  Ability read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Ability(
      name: fields[0] as dynamic,
      url: fields[1] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Ability obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AbilityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GameIndicesAdapter extends TypeAdapter<GameIndices> {
  @override
  final int typeId = 4;

  @override
  GameIndices read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GameIndices(
      gameIndex: fields[0] as dynamic,
      version: fields[1] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, GameIndices obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.gameIndex)
      ..writeByte(1)
      ..write(obj.version);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GameIndicesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MovesAdapter extends TypeAdapter<Moves> {
  @override
  final int typeId = 5;

  @override
  Moves read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Moves(
      move: fields[0] as dynamic,
      versionGroupDetails: fields[1] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Moves obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.move)
      ..writeByte(1)
      ..write(obj.versionGroupDetails);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class VersionGroupDetailsAdapter extends TypeAdapter<VersionGroupDetails> {
  @override
  final int typeId = 6;

  @override
  VersionGroupDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VersionGroupDetails(
      levelLearnedAt: fields[0] as dynamic,
      moveLearnMethod: fields[1] as dynamic,
      versionGroup: fields[2] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, VersionGroupDetails obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.levelLearnedAt)
      ..writeByte(1)
      ..write(obj.moveLearnMethod)
      ..writeByte(2)
      ..write(obj.versionGroup);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VersionGroupDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SpritesAdapter extends TypeAdapter<Sprites> {
  @override
  final int typeId = 7;

  @override
  Sprites read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Sprites(
      backDefault: fields[0] as dynamic,
      backShiny: fields[1] as dynamic,
      frontDefault: fields[2] as dynamic,
      frontShiny: fields[3] as dynamic,
      other: fields[4] as dynamic,
      versions: fields[5] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Sprites obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.backDefault)
      ..writeByte(1)
      ..write(obj.backShiny)
      ..writeByte(2)
      ..write(obj.frontDefault)
      ..writeByte(3)
      ..write(obj.frontShiny)
      ..writeByte(4)
      ..write(obj.other)
      ..writeByte(5)
      ..write(obj.versions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpritesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OtherAdapter extends TypeAdapter<Other> {
  @override
  final int typeId = 8;

  @override
  Other read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Other(
      dreamWorld: fields[0] as dynamic,
      home: fields[1] as dynamic,
      officialArtwork: fields[2] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Other obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.dreamWorld)
      ..writeByte(1)
      ..write(obj.home)
      ..writeByte(2)
      ..write(obj.officialArtwork);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OtherAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DreamWorldAdapter extends TypeAdapter<DreamWorld> {
  @override
  final int typeId = 9;

  @override
  DreamWorld read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DreamWorld(
      frontDefault: fields[0] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, DreamWorld obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.frontDefault);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DreamWorldAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HomeAdapter extends TypeAdapter<Home> {
  @override
  final int typeId = 10;

  @override
  Home read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Home(
      frontDefault: fields[0] as dynamic,
      frontShiny: fields[1] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Home obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.frontDefault)
      ..writeByte(1)
      ..write(obj.frontShiny);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OfficialArtworkAdapter extends TypeAdapter<OfficialArtwork> {
  @override
  final int typeId = 11;

  @override
  OfficialArtwork read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OfficialArtwork(
      frontDefault: fields[0] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, OfficialArtwork obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.frontDefault);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OfficialArtworkAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class VersionsAdapter extends TypeAdapter<Versions> {
  @override
  final int typeId = 29;

  @override
  Versions read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Versions(
      generationI: fields[0] as dynamic,
      generationIi: fields[1] as dynamic,
      generationIii: fields[2] as dynamic,
      generationIv: fields[3] as dynamic,
      generationV: fields[4] as dynamic,
      generationVi: fields[5] as dynamic,
      generationVii: fields[6] as dynamic,
      generationViii: fields[7] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Versions obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.generationI)
      ..writeByte(1)
      ..write(obj.generationIi)
      ..writeByte(2)
      ..write(obj.generationIii)
      ..writeByte(3)
      ..write(obj.generationIv)
      ..writeByte(4)
      ..write(obj.generationV)
      ..writeByte(5)
      ..write(obj.generationVi)
      ..writeByte(6)
      ..write(obj.generationVii)
      ..writeByte(7)
      ..write(obj.generationViii);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VersionsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenerationIAdapter extends TypeAdapter<GenerationI> {
  @override
  final int typeId = 12;

  @override
  GenerationI read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenerationI(
      redBlue: fields[0] as dynamic,
      yellow: fields[1] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, GenerationI obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.redBlue)
      ..writeByte(1)
      ..write(obj.yellow);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenerationIAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RedBlueAdapter extends TypeAdapter<RedBlue> {
  @override
  final int typeId = 13;

  @override
  RedBlue read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RedBlue(
      backDefault: fields[0] as dynamic,
      backGray: fields[1] as dynamic,
      backTransparent: fields[2] as dynamic,
      frontDefault: fields[3] as dynamic,
      frontGray: fields[4] as dynamic,
      frontTransparent: fields[5] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, RedBlue obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.backDefault)
      ..writeByte(1)
      ..write(obj.backGray)
      ..writeByte(2)
      ..write(obj.backTransparent)
      ..writeByte(3)
      ..write(obj.frontDefault)
      ..writeByte(4)
      ..write(obj.frontGray)
      ..writeByte(5)
      ..write(obj.frontTransparent);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RedBlueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenerationIiAdapter extends TypeAdapter<GenerationIi> {
  @override
  final int typeId = 14;

  @override
  GenerationIi read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenerationIi(
      crystal: fields[0] as dynamic,
      gold: fields[1] as dynamic,
      silver: fields[2] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, GenerationIi obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.crystal)
      ..writeByte(1)
      ..write(obj.gold)
      ..writeByte(2)
      ..write(obj.silver);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenerationIiAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CrystalAdapter extends TypeAdapter<Crystal> {
  @override
  final int typeId = 15;

  @override
  Crystal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Crystal(
      backDefault: fields[0] as dynamic,
      backShiny: fields[1] as dynamic,
      backShinyTransparent: fields[2] as dynamic,
      backTransparent: fields[3] as dynamic,
      frontDefault: fields[4] as dynamic,
      frontShiny: fields[5] as dynamic,
      frontShinyTransparent: fields[6] as dynamic,
      frontTransparent: fields[7] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Crystal obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.backDefault)
      ..writeByte(1)
      ..write(obj.backShiny)
      ..writeByte(2)
      ..write(obj.backShinyTransparent)
      ..writeByte(3)
      ..write(obj.backTransparent)
      ..writeByte(4)
      ..write(obj.frontDefault)
      ..writeByte(5)
      ..write(obj.frontShiny)
      ..writeByte(6)
      ..write(obj.frontShinyTransparent)
      ..writeByte(7)
      ..write(obj.frontTransparent);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CrystalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GoldAdapter extends TypeAdapter<Gold> {
  @override
  final int typeId = 16;

  @override
  Gold read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Gold(
      backDefault: fields[0] as dynamic,
      backShiny: fields[1] as dynamic,
      frontDefault: fields[2] as dynamic,
      frontShiny: fields[3] as dynamic,
      frontTransparent: fields[4] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Gold obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.backDefault)
      ..writeByte(1)
      ..write(obj.backShiny)
      ..writeByte(2)
      ..write(obj.frontDefault)
      ..writeByte(3)
      ..write(obj.frontShiny)
      ..writeByte(4)
      ..write(obj.frontTransparent);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GoldAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenerationIiiAdapter extends TypeAdapter<GenerationIii> {
  @override
  final int typeId = 17;

  @override
  GenerationIii read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenerationIii(
      emerald: fields[0] as dynamic,
      fireredLeafgreen: fields[1] as dynamic,
      rubySapphire: fields[2] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, GenerationIii obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.emerald)
      ..writeByte(1)
      ..write(obj.fireredLeafgreen)
      ..writeByte(2)
      ..write(obj.rubySapphire);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenerationIiiAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EmeraldAdapter extends TypeAdapter<Emerald> {
  @override
  final int typeId = 18;

  @override
  Emerald read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Emerald(
      frontDefault: fields[0] as dynamic,
      frontShiny: fields[1] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Emerald obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.frontDefault)
      ..writeByte(1)
      ..write(obj.frontShiny);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmeraldAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FireredLeafgreenAdapter extends TypeAdapter<FireredLeafgreen> {
  @override
  final int typeId = 19;

  @override
  FireredLeafgreen read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FireredLeafgreen(
      backDefault: fields[0] as dynamic,
      backShiny: fields[1] as dynamic,
      frontDefault: fields[2] as dynamic,
      frontShiny: fields[3] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, FireredLeafgreen obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.backDefault)
      ..writeByte(1)
      ..write(obj.backShiny)
      ..writeByte(2)
      ..write(obj.frontDefault)
      ..writeByte(3)
      ..write(obj.frontShiny);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FireredLeafgreenAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenerationIvAdapter extends TypeAdapter<GenerationIv> {
  @override
  final int typeId = 20;

  @override
  GenerationIv read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenerationIv(
      diamondPearl: fields[0] as dynamic,
      heartgoldSoulsilver: fields[1] as dynamic,
      platinum: fields[2] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, GenerationIv obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.diamondPearl)
      ..writeByte(1)
      ..write(obj.heartgoldSoulsilver)
      ..writeByte(2)
      ..write(obj.platinum);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenerationIvAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DiamondPearlAdapter extends TypeAdapter<DiamondPearl> {
  @override
  final int typeId = 21;

  @override
  DiamondPearl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DiamondPearl(
      backDefault: fields[0] as dynamic,
      backShiny: fields[1] as dynamic,
      frontDefault: fields[2] as dynamic,
      frontShiny: fields[3] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, DiamondPearl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.backDefault)
      ..writeByte(1)
      ..write(obj.backShiny)
      ..writeByte(2)
      ..write(obj.frontDefault)
      ..writeByte(3)
      ..write(obj.frontShiny);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiamondPearlAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenerationVAdapter extends TypeAdapter<GenerationV> {
  @override
  final int typeId = 22;

  @override
  GenerationV read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenerationV(
      blackWhite: fields[0] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, GenerationV obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.blackWhite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenerationVAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BlackWhiteAdapter extends TypeAdapter<BlackWhite> {
  @override
  final int typeId = 23;

  @override
  BlackWhite read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BlackWhite(
      animated: fields[0] as dynamic,
      backDefault: fields[1] as dynamic,
      backShiny: fields[2] as dynamic,
      frontDefault: fields[3] as dynamic,
      frontShiny: fields[4] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, BlackWhite obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.animated)
      ..writeByte(1)
      ..write(obj.backDefault)
      ..writeByte(2)
      ..write(obj.backShiny)
      ..writeByte(3)
      ..write(obj.frontDefault)
      ..writeByte(4)
      ..write(obj.frontShiny);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BlackWhiteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenerationViAdapter extends TypeAdapter<GenerationVi> {
  @override
  final int typeId = 24;

  @override
  GenerationVi read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenerationVi(
      omegarubyAlphasapphire: fields[0] as dynamic,
      xY: fields[1] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, GenerationVi obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.omegarubyAlphasapphire)
      ..writeByte(1)
      ..write(obj.xY);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenerationViAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenerationViiAdapter extends TypeAdapter<GenerationVii> {
  @override
  final int typeId = 25;

  @override
  GenerationVii read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenerationVii(
      icons: fields[0] as dynamic,
      ultraSunUltraMoon: fields[1] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, GenerationVii obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.icons)
      ..writeByte(1)
      ..write(obj.ultraSunUltraMoon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenerationViiAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenerationViiiAdapter extends TypeAdapter<GenerationViii> {
  @override
  final int typeId = 26;

  @override
  GenerationViii read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenerationViii(
      icons: fields[0] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, GenerationViii obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.icons);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenerationViiiAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StatsAdapter extends TypeAdapter<Stats> {
  @override
  final int typeId = 27;

  @override
  Stats read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Stats(
      baseStat: fields[0] as dynamic,
      effort: fields[1] as dynamic,
      stat: fields[2] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Stats obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.baseStat)
      ..writeByte(1)
      ..write(obj.effort)
      ..writeByte(2)
      ..write(obj.stat);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TypesAdapter extends TypeAdapter<Types> {
  @override
  final int typeId = 28;

  @override
  Types read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Types(
      slot: fields[0] as dynamic,
      type: fields[1] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Types obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.slot)
      ..writeByte(1)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
