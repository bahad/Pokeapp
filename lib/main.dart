import 'package:animations/animations.dart';
import 'package:bayzat_interview/src/modules/favorites/viewmodel/favoriteviewmodel.dart';
import 'package:bayzat_interview/src/modules/pokemonlist/viewmodel/pokemonviewmodel.dart';
import 'package:bayzat_interview/src/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  await Hive.initFlutter();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<PokemonViewModel>(
            create: (_) => PokemonViewModel(),
          ),
          ChangeNotifierProvider<FavoriteViewModel>(
            create: (_) => FavoriteViewModel(),
          ),
        ],
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                fontFamily: 'STYMIEM',
                pageTransitionsTheme: const PageTransitionsTheme(builders: {
                  TargetPlatform.android: SharedAxisPageTransitionsBuilder(
                    transitionType: SharedAxisTransitionType.horizontal,
                  ),
                  TargetPlatform.iOS: SharedAxisPageTransitionsBuilder(
                    transitionType: SharedAxisTransitionType.horizontal,
                  ),
                })),
            home: const SplashScreen()));
  }
}
