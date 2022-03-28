import 'package:flutter/material.dart';

class FloatingActionButtonScreen extends StatelessWidget {
  const FloatingActionButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BotonFlotante(),
      bottomNavigationBar: BarraNavegacion(),
    );
  }
}

//pagina 2
class FloatingActionButtonScreen2 extends StatelessWidget {
  const FloatingActionButtonScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const BotonFlotante(),
      bottomNavigationBar: const BarraNavegacion(),
    );
  }
}

class BarraNavegacion extends StatelessWidget {
  const BarraNavegacion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar"),
        BottomNavigationBarItem(icon: Icon(Icons.security), label: "Ajustes"),
      ],
    );
  }
}

class BotonFlotante extends StatelessWidget {
  const BotonFlotante({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      highlightElevation: 0,
      onPressed: () {
        // ignore: avoid_print
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    const FloatingActionButtonScreen2()));
      },
      child: const Icon(Icons.add),
    );
  }
}
