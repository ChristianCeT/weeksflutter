import 'package:flutter/material.dart';

class DetailsHeroScreen extends StatelessWidget {
  const DetailsHeroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Detail Hero Animated')),
        body: Column(
          children: const [
            Hero(
              tag: 'logo',
              child: FlutterLogo(
                size: 450,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Lorem ad consectetur pariatur tempor labore mollit. Culpa in mollit fugiat proident Lorem quis Lorem occaecat voluptate. Ex veniam nisi consequat qui sint aliquip cillum. Nostrud non cupidatat amet velit.',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ));
  }
}
