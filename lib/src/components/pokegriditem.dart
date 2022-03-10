import 'package:bayzat_interview/src/modules/pokemonlist/view/pokemonlistpage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class PokeGridItem extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final data;
  final Color backgroundColor;
  const PokeGridItem(
      {Key? key, required this.data, required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: data.id.toString(),
            child: Container(
              width: double.infinity,
              height: size.height * 0.094,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: backgroundColor,
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(
                    data.sprites!.other!.officialArtwork!.frontDefault
                        .toString(),
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
                data.types!.length == 1
                    ? CustomText(
                        sizes: Sizes.small,
                        text: data.types![0].type!.name.toString().capitalize())
                    : CustomText(
                        sizes: Sizes.small,
                        text: data.types![0].type!.name
                                .toString()
                                .capitalize() +
                            ", " +
                            data.types![1].type!.name.toString().capitalize()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
