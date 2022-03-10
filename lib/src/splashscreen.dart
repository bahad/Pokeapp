import 'dart:async';
import 'dart:math';
import 'package:bayzat_interview/src/components/custom_text.dart';
import 'package:bayzat_interview/src/homepage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController, fadeAnimController;
  Animation<double>? rotateX, fadeAnim, fadeAnim2;

  @override
  void initState() {
    animationController = AnimationController(
      duration: const Duration(milliseconds: 20000),
      vsync: this,
    )..repeat();
    rotateX = Tween<double>(
      begin: -10.0,
      end: 10.0,
    ).animate(
        CurvedAnimation(parent: animationController, curve: Curves.linear));

    fadeAnimController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..forward();

    fadeAnim = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: fadeAnimController,
        curve: const Interval(0.1, 0.3, curve: Curves.easeIn),
      ),
    );
    fadeAnim2 = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: fadeAnimController,
        curve: const Interval(0.4, 0.7, curve: Curves.easeIn),
      ),
    );

    Future.delayed(const Duration(seconds: 3), () {
      // 5s over, navigate to a new page
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
          (route) => false);
    });

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    fadeAnimController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFF3558CD)),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedBuilder(
                    animation: animationController,
                    builder: (context, child) {
                      return Transform(
                        transform: Matrix4.rotationX(rotateX!.value * pi),
                        alignment: Alignment.center,
                        child: Image.asset('assets/images/pokeball.png',
                            height: size.height * 0.100),
                      );
                    },
                  ),
                  const SizedBox(width: 20),
                  AnimatedBuilder(
                      animation: fadeAnimController,
                      builder: (context, child) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FadeTransition(
                              opacity: fadeAnim!,
                              child: CustomText(
                                sizes: Sizes.title,
                                color:
                                    Colors.white.withOpacity(fadeAnim!.value),
                                text: 'Pokemon',
                              ),
                            ),
                            const SizedBox(height: 5),
                            FadeTransition(
                              opacity: fadeAnim2!,
                              child: const CustomText(
                                sizes: Sizes.sliverTitle,
                                color: Colors.white,
                                text: 'Pokedox',
                              ),
                            ),
                          ],
                        );
                      })
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
