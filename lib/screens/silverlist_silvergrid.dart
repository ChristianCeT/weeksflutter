import 'dart:math';

import 'package:flutter/material.dart';

class SilverGridListScreen extends StatelessWidget {
  const SilverGridListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> items =
        List.generate(200, (index) => Rectangulo(index: index));
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const SliverAppBar(
          title: Text('SliverGrid'),
        ),
        /*  SliverGrid.count(
          crossAxisCount: 10,
          children: items,
        ), */
        //Tamaño del widget es el maxcrossaxisextent 
        SliverGrid.extent(maxCrossAxisExtent: 80, children: items),
        
        const SliverAppBar(
          title: Text('SliverList'),
          pinned: true,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, i) {
            return items[i];
          }, childCount: items.length),
        )
      ],
    ));
  }
}

class Rectangulo extends StatelessWidget {
  final int index;
  const Rectangulo({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rnd = Random();
    final r = rnd.nextInt(255);
    final g = rnd.nextInt(255);
    final b = rnd.nextInt(255);

    return Container(
      child: Center(
          child: Text(
        '$index',
        style: const TextStyle(color: Colors.white),
      )),
      width: 150,
      height: 150,
      decoration: BoxDecoration(color: Color.fromRGBO(r, g, b, 1)),
    );
  }
}
