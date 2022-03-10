import 'package:bayzat_interview/src/components/custom_loading.dart';
import 'package:bayzat_interview/src/components/nodata.dart';
import 'package:bayzat_interview/src/components/pokegriditem.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../pokemondetail/view/pokemondetail_page.dart';
import '../viewmodel/pokemonviewmodel.dart';

class PokemonListPage extends StatefulWidget {
  const PokemonListPage({Key? key}) : super(key: key);

  @override
  _PokemonListPageState createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  late ScrollController scrollController;
  int startIndex = 22, endIndex = 45;
  @override
  void initState() {
    scrollController = ScrollController();
    PokemonViewModel pokemonProvider =
        Provider.of<PokemonViewModel>(context, listen: false);
    // pokemonProvider.getPokemons();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // PokemonViewModel pokemonProvider = context.watch<PokemonViewModel>();
    PokemonViewModel pokemonProvider = Provider.of<PokemonViewModel>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFCD2873),
        child: const Icon(Icons.arrow_upward_outlined),
        onPressed: () {
          scrollController.animateTo(
            scrollController.position.minScrollExtent,
            curve: Curves.easeOut,
            duration: const Duration(milliseconds: 500),
          );
        },
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          if (scrollNotification is ScrollStartNotification) {
          } else if (scrollNotification is ScrollUpdateNotification) {
          } else if (scrollNotification is ScrollEndNotification) {
            final metrics = scrollNotification.metrics;
            if (metrics.atEdge) {
              bool isTop = metrics.pixels == 0;
              if (isTop) {
              } else {
                //END SCROLL
                pokemonProvider.getPokemons(startIndex, endIndex);
                setState(() {
                  startIndex = endIndex + 1;
                  endIndex = startIndex + 20;
                });
                Future.delayed(const Duration(milliseconds: 700), () {
                  scrollController.animateTo(
                    scrollController.position.maxScrollExtent - 0.1,
                    curve: Curves.easeOut,
                    duration: const Duration(milliseconds: 500),
                  );
                });
              }
            }
          }
          return true;
        },
        child: SingleChildScrollView(
            controller: scrollController,
            child: Padding(
                padding: const EdgeInsets.all(16),
                child:
                    pokemonProvider.pokemon == null || pokemonProvider.loading
                        ? Container(
                            decoration: const BoxDecoration(),
                            child: const CustomLoading(),
                          )
                        : pokemonProvider.error
                            ? NoData(
                                messages: "Check Your Internet Conneticon",
                                onPressed: () {
                                  pokemonProvider.getPokemons(0, 0);
                                },
                              )
                            : Container(
                                child: _buildGrid(pokemonProvider, size),
                              ))),
      ),
    );
  }

  Widget _buildGrid(PokemonViewModel pokemonProvider, Size size) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: pokemonProvider.pokemon.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          crossAxisCount: size.width < 390
              ? 2
              : size.width >= 500
                  ? 4
                  : 3,
          childAspectRatio: size.width < 390
              ? 0.9
              : size.width >= 500
                  ? 0.7
                  : 0.6,
        ),
        itemBuilder: (context, index) {
          var data = pokemonProvider.pokemon[index];
          var backgroundColor = data.types!.first.type!.name == "fire"
              ? const Color(0xFFFDF1F1)
              : data.types!.first.type!.name == "grass"
                  ? const Color(0xFFF3F9EF)
                  : data.types!.first.type!.name == "water"
                      ? const Color(0xFFF3F9FE)
                      : data.types!.first.type!.name == "normal"
                          ? const Color(0xFFFFF9F9)
                          : data.types!.first.type!.name == "bug"
                              ? const Color(0xFFFDFCE5)
                              : Colors.white;
          return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PokemonDetailPage(
                              data: pokemonProvider.pokemon[index],
                              backgroundColor: backgroundColor,
                            )));
              },
              child: PokeGridItem(
                data: data,
                backgroundColor: backgroundColor,
              ));
        });
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
