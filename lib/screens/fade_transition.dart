import 'package:flutter/material.dart';

class FadeTransitionScreen extends StatefulWidget {
  const FadeTransitionScreen({Key? key}) : super(key: key);

  @override
  State<FadeTransitionScreen> createState() => _FadeTransitionScreenState();
}

class _FadeTransitionScreenState extends State<FadeTransitionScreen>
    with SingleTickerProviderStateMixin {
  //controller en las animaciones
  late AnimationController controller;
  late Animation<double> opacidad;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this,
        duration: const Duration(
          milliseconds: 1500,
        ));
    opacidad = Tween(begin: 0.5, end: 1.0).animate(controller);

    //sirve para darle play
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    //puede contener listener o algunas acciones del usuario
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.architecture),
          onPressed: () {
            controller.forward(from: 0.0);
          }),
      body: Center(
        child: FadeTransition(opacity: opacidad, child: const Rectangulo()),
      ),
    );
  }
}

class Rectangulo extends StatelessWidget {
  const Rectangulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: const BoxDecoration(color: Colors.blue),
    );
  }
}
