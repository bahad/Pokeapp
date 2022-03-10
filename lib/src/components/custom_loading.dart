import 'package:flutter/material.dart';
import 'dart:math';

class CustomLoading extends StatefulWidget {
  const CustomLoading({Key? key}) : super(key: key);

  @override
  _CustomLoadingState createState() => _CustomLoadingState();
}

class _CustomLoadingState extends State<CustomLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> rotateY;

  @override
  initState() {
    super.initState();
    animationController = AnimationController(
      duration: const Duration(milliseconds: 12000),
      vsync: this,
    )..repeat();
    rotateY = Tween<double>(
      begin: -10.0,
      end: 10.0,
    ).animate(
        CurvedAnimation(parent: animationController, curve: Curves.linear));
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          final img = Image.asset('assets/images/pokeball.png',
              height: size.height * 0.059);

          return Transform(
            transform: Matrix4.rotationY(rotateY.value * pi),
            alignment: Alignment.center,
            child: img,
          );
        },
      ),
    );
  }
}
