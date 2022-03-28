import 'package:flutter/material.dart';

class OpacityScreen extends StatelessWidget {
  const OpacityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PaginaOpacity();
  }
}

class PaginaOpacity extends StatefulWidget {
  const PaginaOpacity({
    Key? key,
  }) : super(key: key);

  @override
  State<PaginaOpacity> createState() => _PaginaOpacityState();
}

class _PaginaOpacityState extends State<PaginaOpacity> {
  double opacidad = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.opacity),
          onPressed: () {
            setState(() {
              opacidad = (opacidad == 1) ? 0 : 1;
            });
          },
        ),
        body: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          child: Wrap(
            direction: Axis.vertical,
            spacing: 50,
            children: [
              const Rectangulo(
                color: Color(0xff00E057),
                opacity: 1,
              ),
              Rectangulo(
                color: const Color(0xff00BFF4),
                opacity: opacidad,
              ),
              const Rectangulo(
                color: Color(0xffFEBF2F),
                opacity: 1,
              ),
            ],
          ),
        ));
  }
}

class Rectangulo extends StatelessWidget {
  final Color color;
  final double opacity;
  const Rectangulo({
    Key? key,
    required this.color,
    required this.opacity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(seconds: 1),
      opacity: opacity,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(color: color),
      ),
    );
  }
}
