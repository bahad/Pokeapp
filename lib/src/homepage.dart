import 'package:bayzat_interview/src/components/custom_text.dart';
import 'package:bayzat_interview/src/modules/favorites/viewmodel/favoriteviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'modules/favorites/view/favoritespage.dart';
import 'modules/pokemonlist/view/pokemonlistpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    FavoriteViewModel favoriteViewModel = context.watch<FavoriteViewModel>();
    return DefaultTabController(
        animationDuration: const Duration(milliseconds: 500),
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/pokeball.png', height: 30),
                  const SizedBox(width: 10),
                  const CustomText(
                    sizes: Sizes.title,
                    text: 'Pokedex',
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              bottom: TabBar(
                labelStyle: TextStyle(
                    fontSize: size.width < 390
                        ? 14.0
                        : size.width >= 500
                            ? 22.0
                            : 16.0),
                tabs: [
                  const Tab(text: 'All Pokemons'),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.only(left: size.width * 0.128),
                      child: Row(
                        children: [
                          const Text('Favorites'),
                          const SizedBox(width: 5),
                          favoriteViewModel.favList != null
                              ? Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFCD2873),
                                      borderRadius: BorderRadius.circular(30)),
                                  width: size.width < 500 ? 21 : 27,
                                  height: size.width < 500 ? 21 : 27,
                                  child: Center(
                                    child: Text(favoriteViewModel
                                        .favList!.length
                                        .toString()),
                                  ))
                              : const SizedBox()
                        ],
                      ),
                    ),
                  ),
                ],
              )),
          body: const TabBarView(
            children: [
              PokemonListPage(),
              FavoritesPage(),
            ],
          ),
        ));
  }
}
