import 'package:bayzat_interview/src/models/pokemon_model.dart';
import 'package:flutter/material.dart';

import '../../../repository/pokeservices.dart';

class PokemonViewModel extends ChangeNotifier {
  var pokemon = <PokemonModel>[];
  var error = false;
  bool loading = true;

  PokemonViewModel() {
    getPokemons(0, 0);
  }

  getPokemons(int startIndex, int endIndex) async {
    loading = true;
    error = false;
    if (startIndex == 0 && endIndex == 0) {
      for (int i = 1; i < 22; i++) {
        pokemon = [];
        PokemonServices().getPokemon(i).then((value) {
          if (value != 0) {
            pokemon.add(value);
            loading = false;
            error = false;
            notifyListeners();
          } else {
            loading = false;
            error = true;
            notifyListeners();
          }
        });
      }
    } else {
      for (int i = startIndex; i < endIndex; i++) {
        PokemonServices().getPokemon(i).then((value) {
          if (value != 0) {
            pokemon.add(value);
            loading = false;
            error = false;
            notifyListeners();
          } else {
            loading = false;
            error = true;
            notifyListeners();
          }
        });
      }
    }

    // loading = false;
    // error = false;
    notifyListeners();
  }
}
