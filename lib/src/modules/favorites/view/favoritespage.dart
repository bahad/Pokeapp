import 'package:bayzat_interview/src/components/nodata.dart';
import 'package:bayzat_interview/src/modules/favorites/viewmodel/favoriteviewmodel.dart';
import 'package:bayzat_interview/src/modules/pokemonlist/view/pokemonlistpage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/custom_text.dart';
import '../../../repository/sqfservices.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  late DbHelper dbHelper;

  @override
  void initState() {
    dbHelper = DbHelper();
    final favProvider = Provider.of<FavoriteViewModel>(context, listen: false);
    favProvider.getFav();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavoriteViewModel>(context);
    Size size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: favProvider.favList == null
            ? const Center(child: CircularProgressIndicator())
            : favProvider.favList!.isEmpty
                ? const NoData(messages: "You haven't added favorites yet")
                : _buildGrid(favProvider.favList, favProvider, size));
  }

  _buildGrid(favList, FavoriteViewModel favProvider, size) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: favProvider.favList!.length,
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
          var data = favProvider.favList![index];
          var backgroundColor = data.types!.contains("Fire")
              ? const Color(0xFFFDF1F1)
              : data.types!.contains("Grass")
                  ? const Color(0xFFF3F9EF)
                  : data.types!.contains("Water")
                      ? const Color(0xFFF3F9FE)
                      : data.types!.contains("Normal")
                          ? const Color(0xFFFFF9F9)
                          : data.types!.contains("Bug")
                              ? const Color(0xFFFDFCE5)
                              : Colors.white;
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: data.id.toString(),
                  child: Container(
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: backgroundColor,
                        image: DecorationImage(
                            image: CachedNetworkImageProvider(
                          data.image.toString(),
                        ))),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          fontWeight: FontWeight.bold,
                          sizes: Sizes.normal,
                          text: data.name.toString().capitalize()),
                      const SizedBox(height: 10),
                      CustomText(sizes: Sizes.small, text: data.types)
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
