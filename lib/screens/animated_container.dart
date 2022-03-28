import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatelessWidget {
  const AnimatedContainerScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const AnimatedPagina();
  }
}

class AnimatedPagina extends StatefulWidget {
  const AnimatedPagina({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimatedPagina> createState() => _AnimatedPaginaState();
}

class _AnimatedPaginaState extends State<AnimatedPagina> {
  @override
  Widget build(BuildContext context) {
    final rnd = Random();
    final r = rnd.nextInt(255);
    final g = rnd.nextInt(255);
    final b = rnd.nextInt(255);

    final r2 = rnd.nextInt(255);
    final g2 = rnd.nextInt(255);
    final b2 = rnd.nextInt(255);

    final width = rnd.nextInt(300) + 50;
    final height = rnd.nextInt(300) + 50;

    final borderRadius =
        BorderRadius.circular(rnd.nextInt(200).toDouble() + 10);
    final border = Border.all(
        width: rnd.nextInt(20).toDouble() + 2,
        color: Color.fromRGBO(r2, g2, b2, 1));

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: const Icon(Icons.accessibility_new_outlined),
        onPressed: () {
          setState(() {});
        },
      ),
      body: Center( 
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 1500),
          curve: Curves.elasticOut,
          width: width.toDouble(),
          height: height.toDouble(),
          decoration: BoxDecoration(
            color: Color.fromRGBO(r, g, b, 1),
            borderRadius: borderRadius,
            border: border,
          ),
        ),
      ),
    );
  }
}
