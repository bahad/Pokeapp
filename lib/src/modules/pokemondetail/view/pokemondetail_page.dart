import 'package:bayzat_interview/src/components/custom_snackbar.dart';
import 'package:bayzat_interview/src/components/custom_text.dart';
import 'package:bayzat_interview/src/modules/pokemonlist/view/pokemonlistpage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import '../../../models/favorites.dart';
import '../../../models/pokemon_model.dart';
import '../../../repository/sqfservices.dart';

class PokemonDetailPage extends StatefulWidget {
  final PokemonModel data;
  final Color backgroundColor;
  const PokemonDetailPage(
      {Key? key, required this.data, required this.backgroundColor})
      : super(key: key);

  @override
  _PokemonDetailPageState createState() => _PokemonDetailPageState();
}

class _PokemonDetailPageState extends State<PokemonDetailPage> {
  late ScrollController scrollController;
  var top = 0.0;
  num avgPower = 0;
  bool fav = false;
  late DbHelper dbHelper;
  String typeString = "";
  @override
  void initState() {
    scrollController = ScrollController();
    dbHelper = DbHelper();
    //Avg Calcuate
    for (var element in widget.data.stats!) {
      avgPower += element.baseStat!;
    }
    //Type Add
    for (var element in widget.data.types!) {
      typeString =
          typeString + element.type!.name.toString().capitalize() + ", ";
    }

    getFav();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  getFav() {
    dbHelper.getFavoriteMatch(widget.data.id).then((value) {
      setState(() {
        if (mounted) {
          fav = value;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = widget.data.height;
    var weight = widget.data.weight;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
        title: CustomText(
          sizes: Sizes.title,
          color: Colors.black,
          text: widget.data.name.toString().capitalize(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFCD2873),
        child: Icon(
          fav ? Icons.favorite : Icons.favorite_border_rounded,
        ),
        onPressed: () async {
          if (fav == true) {
            dbHelper.removeFavorite(widget.data.id!.toInt()).then((value) {
              if (value != 0) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(CustomSnackBar().removeFavoriteSuccess);
                setState(() {
                  fav = false;
                });
              } else {
                ScaffoldMessenger.of(context)
                    .showSnackBar(CustomSnackBar().addFavoriteFail);
              }
            });
            setState(() {});
          } else {
            var favorite = Favorite(
                name: widget.data.name.toString(),
                pokeId: widget.data.id!.toInt(),
                image: widget.data.sprites!.other!.officialArtwork!.frontDefault
                    .toString(),
                types: typeString);
            dbHelper.insertFavorite(favorite).then((value) {
              if (value != 0) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(CustomSnackBar().addFavoriteSuccess);
                setState(() {
                  fav = true;
                });
              } else {
                ScaffoldMessenger.of(context)
                    .showSnackBar(CustomSnackBar().addFavoriteFail);
              }
            });
            setState(() {});
          }
        },
      ),
      body: NestedScrollView(
          controller: scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: widget.backgroundColor,
                  expandedHeight: size.height / 3.4, //215
                  floating: false,
                  pinned: false,
                  flexibleSpace: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      top = constraints.biggest.height;
                      return FlexibleSpaceBar(
                        centerTitle: false,
                        collapseMode: CollapseMode.parallax,
                        background: AnimatedOpacity(
                            duration: const Duration(seconds: 2),
                            opacity: top <= 95
                                ? 0.0
                                : top < (size.height / 3.4) / 2
                                    ? 0.0
                                    : 1.0,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 15),
                                      CustomText(
                                        fontWeight: FontWeight.bold,
                                        sizes: Sizes.sliverTitle,
                                        text: widget.data.name
                                            .toString()
                                            .capitalize(),
                                      ),
                                      const SizedBox(height: 15),
                                      widget.data.types!.length == 1
                                          ? CustomText(
                                              sizes: Sizes.normal,
                                              text: widget
                                                  .data.types![0].type!.name
                                                  .toString()
                                                  .capitalize())
                                          : CustomText(
                                              sizes: Sizes.normal,
                                              text: widget
                                                      .data.types![0].type!.name
                                                      .toString()
                                                      .capitalize() +
                                                  ", " +
                                                  widget
                                                      .data.types![1].type!.name
                                                      .toString()
                                                      .capitalize()),
                                    ],
                                  ),
                                  Hero(
                                      tag: widget.data.id.toString(),
                                      child: CachedNetworkImage(
                                          imageUrl: widget.data.sprites!.other!
                                              .officialArtwork!.frontDefault
                                              .toString()
                                              .capitalize(),
                                          fit: BoxFit.cover,
                                          height: size.height * 0.18))
                                ],
                              ),
                            )),
                      );
                    },
                  )),
            ];
          },
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomText(
                            sizes: Sizes.normal,
                            text: 'Height\n' + height.toString()),
                        CustomText(
                            sizes: Sizes.normal,
                            text: 'Weight\n' + weight.toString()),
                        CustomText(
                            sizes: Sizes.normal,
                            text: 'BMI\n' +
                                (weight! / pow(height!, 2)).toStringAsFixed(2))
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 11.0, top: 25),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: CustomText(
                          sizes: Sizes.title,
                          fontWeight: FontWeight.bold,
                          text: 'Base Stats',
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Divider(height: 25),
                    Container(
                      decoration: const BoxDecoration(),
                      child: ListView.builder(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: widget.data.stats!.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    sizes: Sizes.normal,
                                    text: widget.data.stats![index].stat!.name
                                            .toString()
                                            .capitalize() +
                                        "  " +
                                        widget.data.stats![index].baseStat
                                            .toString(),
                                  ),
                                  SizedBox(height: size.height * 0.008),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(70),
                                    child: LinearProgressIndicator(
                                        minHeight: size.height * 0.009, // 8,
                                        value: widget
                                                .data.stats![index].baseStat! /
                                            100,
                                        valueColor: index == 3 || index == 4
                                            ? const AlwaysStoppedAnimation<
                                                Color>(Color(0xFFEEC218))
                                            : const AlwaysStoppedAnimation<
                                                Color>(Color(0xFFCD2873)),
                                        backgroundColor: Colors.grey[200]),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 11.0, top: 2),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: CustomText(
                            sizes: Sizes.normal,
                            text: 'Avg Power'
                                    ' ' +
                                (avgPower / 6).toStringAsFixed(2)),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 11.0, top: 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(70),
                        child: LinearProgressIndicator(
                            minHeight: size.height * 0.009, // 8,
                            value: (avgPower / 6) / 100,
                            valueColor: const AlwaysStoppedAnimation<Color>(
                                Color(0xFFCD2873)),
                            backgroundColor: Colors.grey[200]),
                      ),
                    ),
                  ],
                )),
          )),
    );
  }
}
