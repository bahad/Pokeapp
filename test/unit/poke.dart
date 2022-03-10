import 'dart:math';

import 'package:bayzat_interview/src/models/favorites.dart';
import 'package:bayzat_interview/src/models/pokemon_model.dart';
import 'package:bayzat_interview/src/repository/pokeservices.dart';
import 'package:bayzat_interview/src/repository/sqfservices.dart';
import 'package:flutter_test/flutter_test.dart';

void main(List<String> args) {
  late PokemonServices pokemonServices;
  late DbHelper dbHelper;

  setUp(() {
    pokemonServices = PokemonServices();
    dbHelper = DbHelper();
  });

  test("getPokemonModel", () async {
    final response = await pokemonServices.getPokemon(1);
    expect(response is PokemonModel, true);
  });

  test("getFavorite", () async {
    final response = await dbHelper.getFavorite();
    expect(response.isNotEmpty, true);
  });
  //GET BY ıd
  test("getFavoritemMatch", () async {
    final response = await dbHelper.getFavoriteMatch(2);
    expect(response, true);
  });
}
