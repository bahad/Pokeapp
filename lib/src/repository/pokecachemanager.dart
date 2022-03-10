import 'package:hive_flutter/hive_flutter.dart';

import '../models/pokemon_model.dart';

abstract class ICacheManager<T> {
  final String? key;
  Box<T>? _box;

  ICacheManager(this.key);
  Future<void> init() async {
    registerAdapters();
    _box = await Hive.openBox(key!);
  }

  void registerAdapters();

  Future<void> clearAll() async {
    await _box!.clear();
  }

  Future<void> addItems(List<T> items);
  Future<void> putItems(List<T> items);

  T getItem(String key);
  List<T> getValues();

  Future<void> putItem(String key, T item);
  Future<void> removeItem(String key);
}

class PokeCacheManager extends ICacheManager<PokemonModel> {
  PokeCacheManager(String key) : super(key);

  @override
  Future<void> addItems(List<PokemonModel> items) async {
    await _box!.addAll(items);
  }

  @override
  PokemonModel getItem(String key) {
    return _box!.get(key)!;
  }

  @override
  List<PokemonModel> getValues() {
    _box!.clear();
    return _box!.values.toList();
  }

  @override
  Future<void> putItems(List<PokemonModel> items) async {
    await _box!.putAll(Map.fromEntries(items.map((e) => MapEntry(e.id, e))));
  }

  @override
  void registerAdapters() {
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(PokemonModelAdapter());
      Hive.registerAdapter(AbilitiesAdapter());
      Hive.registerAdapter(AbilityAdapter());
      Hive.registerAdapter(GameIndicesAdapter());
      Hive.registerAdapter(MovesAdapter());
      Hive.registerAdapter(VersionsAdapter());
      Hive.registerAdapter(VersionGroupDetailsAdapter());
      Hive.registerAdapter(SpritesAdapter());
      Hive.registerAdapter(OtherAdapter());
      Hive.registerAdapter(DreamWorldAdapter());
      Hive.registerAdapter(HomeAdapter());
      Hive.registerAdapter(OfficialArtworkAdapter());
      Hive.registerAdapter(GenerationIAdapter());
      Hive.registerAdapter(RedBlueAdapter());
      Hive.registerAdapter(GenerationIiAdapter());
      Hive.registerAdapter(CrystalAdapter());
      Hive.registerAdapter(GoldAdapter());
      Hive.registerAdapter(GenerationIiiAdapter());
      Hive.registerAdapter(EmeraldAdapter());
      Hive.registerAdapter(FireredLeafgreenAdapter());
      Hive.registerAdapter(GenerationIvAdapter());
      Hive.registerAdapter(DiamondPearlAdapter());
      Hive.registerAdapter(GenerationVAdapter());
      Hive.registerAdapter(BlackWhiteAdapter());
      Hive.registerAdapter(GenerationViAdapter());
      Hive.registerAdapter(GenerationViiAdapter());
      Hive.registerAdapter(GenerationViiiAdapter());
      Hive.registerAdapter(StatsAdapter());
      Hive.registerAdapter(TypesAdapter());
    }
  }

  @override
  Future<void> removeItem(String key) async {
    await _box!.delete(key);
  }

  @override
  Future<void> putItem(String key, PokemonModel item) async {
    _box!.put(key, item);
  }
}
