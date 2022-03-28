import 'package:flutter/material.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        width: double.infinity,
        height: 300,
        child: PageView(
          //
          controller: PageController(
            //permite acomodar uno a la pantalla dependiendo
            viewportFraction: 0.5,
          ),
          //Para hacer un scroll bonito en android parecido a ios
          physics: const BouncingScrollPhysics(),
          children: const [
            Pagina(color: Colors.blue),
            Pagina(color: Colors.red),
            Pagina(color: Colors.green),
          ],
        ),
      ),
    ));
  }
}

class Pagina extends StatelessWidget {
  final Color color;
  const Pagina({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(left: 30),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(30)),
    );
  }
}
