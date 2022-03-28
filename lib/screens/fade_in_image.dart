import 'package:flutter/material.dart';

class FadeInImageScreen extends StatelessWidget {
  const FadeInImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('FadeInImage'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return FadeInImage(
            placeholder: const AssetImage('assets/img/loading.gif'),
            image: NetworkImage('https://picsum.photos/800/600?image=$index'),
          );
        },
      ),
    );
  }
}
