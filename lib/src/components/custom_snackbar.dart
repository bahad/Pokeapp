import 'package:bayzat_interview/src/components/custom_text.dart';
import 'package:flutter/material.dart';

class CustomSnackBar {
  final addFavoriteSuccess = SnackBar(
    content: const CustomText(
      text: "You've added favorite list succesfully",
      sizes: Sizes.normal,
      textAlign: TextAlign.center,
    ),
    backgroundColor: const Color(0xFFEEC218),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
  );

  final addFavoriteFail = SnackBar(
    content: const CustomText(
      text: "Fail!. Try again ",
      sizes: Sizes.normal,
      textAlign: TextAlign.center,
    ),
    backgroundColor: const Color(0xFFCD2873), //const Color(0xFFCD2873),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
  );

  final removeFavoriteSuccess = SnackBar(
    content: const CustomText(
      text: "You've removed favorite element succesfully",
      sizes: Sizes.normal,
      textAlign: TextAlign.center,
    ),
    backgroundColor: const Color(0xFFEEC218),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
  );
}
