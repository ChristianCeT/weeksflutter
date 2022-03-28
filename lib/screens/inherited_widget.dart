import 'package:flutter/material.dart';
import 'package:flutter_section9/models/my_colors.dart';

class InheritedScreen extends StatefulWidget {
  const InheritedScreen({Key? key}) : super(key: key);

  @override
  State<InheritedScreen> createState() => _InheritedScreenState();
}

class _InheritedScreenState extends State<InheritedScreen> {
  Color color1 = Colors.redAccent;
  Color color2 = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return MyColorsW(
      color1: color1,
      color2: color2,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Rectangulo1(),
              Rectangulo2(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              color1 = Colors.pink;
              color2 = Colors.purple;
            });
          },
          child: const Icon(Icons.color_lens_outlined),
        ),
      ),
    );
  }
}

class Rectangulo1 extends StatelessWidget {
  const Rectangulo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     //buscar widget inherited
    final misColoresw = context.dependOnInheritedWidgetOfExactType<MyColorsW>();
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(color: misColoresw!.color2),
    );
  }
}

class Rectangulo2 extends StatelessWidget {
  const Rectangulo2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //buscar widget inherited
    final misColoresw = context.dependOnInheritedWidgetOfExactType<MyColorsW>();

    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(color: misColoresw!.color1),
    );
  }
}
