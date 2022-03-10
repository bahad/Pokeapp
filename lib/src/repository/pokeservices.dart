import 'dart:convert';

import 'package:bayzat_interview/src/models/pokemon_model.dart';
import 'package:http/http.dart';

abstract class IPokemonRepository {
  Future getPokemon(int number);
}

class PokemonServices implements IPokemonRepository {
  static const apiUrl_ = "pokeapi.co";

  @override
  Future getPokemon(int number) async {
    PokemonModel pokemonModel;
    try {
      final response = await get(
        Uri.https(apiUrl_, 'api/v2/pokemon/$number'),
        headers: {"Accept": "application/json"},
      );

      if (response.statusCode == 200) {
        final decodedJson = json.decode(response.body);
        pokemonModel = PokemonModel.fromJson(decodedJson);
        return pokemonModel;
      } else {
        return 0;
      }
    } catch (e) {
      //print(e);
      return 0;
    }
  }
}
