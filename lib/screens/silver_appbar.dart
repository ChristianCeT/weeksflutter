import 'dart:math';
import 'package:flutter/material.dart';

class SilverAppBarScreen extends StatelessWidget {
  const SilverAppBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListColors();
  }
}

class ListColors extends StatelessWidget {
  final rnd = Random();

  final List<Color> colores = [
    Colors.red,
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.indigo,
    Colors.pink,
    Colors.brown,
    Colors.purple,
    Colors.white12,
    Colors.amber
  ];

  ListColors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //lista de colores dentro del widget
    final List<Widget> items = List.generate(
        100,
        (index) => Container(
              width: double.infinity,
              height: 150,
              color: colores[rnd.nextInt(colores.length)],
            ));

    /* Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return items[index];
        },
      ),
    ); */
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            //hace aparecer el appbar cuando haces scroll
            /*  floating: true, */
            pinned: true,
            title: const Text('SliverAppBar'),
            expandedHeight: 200,
            flexibleSpace: Image.network(
              'https://images.unsplash.com/photo-1536257104079-aa99c6460a5a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGFuZHNjYXBlc3xlbnwwfHwwfHw%3D&w=1000&q=80',
              fit: BoxFit.cover,
            ),
          ),
          //Poner los items que no son widgets como el sliverAppbar
          SliverList(delegate: SliverChildListDelegate(items)),
        ],
      ),
    );
  }
}
