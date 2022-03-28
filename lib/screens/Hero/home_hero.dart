import 'package:flutter/material.dart';

class HomeHeroScreen extends StatelessWidget {
  const HomeHeroScreen({Key? key}) : super(key: key);

  void pushRoute(BuildContext context) {
    Navigator.pushNamed(context, 'hero_details');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Hero Animated')),
        body: Table(
          children: [
            const TableRow(children: [
              Placeholder(
                fallbackHeight: 150,
              ),
              Placeholder(
                fallbackHeight: 150,
              ),
              Placeholder(
                fallbackHeight: 150,
              )
            ]),
            const TableRow(children: [
              Placeholder(
                fallbackHeight: 150,
              ),
              Placeholder(
                fallbackHeight: 150,
              ),
              Placeholder(
                fallbackHeight: 150,
              )
            ]),
            TableRow(children: [
              GestureDetector(
                onTap: () {
                  pushRoute(context);
                },
                child: const Hero(
                  tag: 'logo',
                  child: FlutterLogo(
                    size: 150,
                  ),
                ),
              ),
              const Placeholder(
                fallbackHeight: 150,
              ),
              const Placeholder(
                fallbackHeight: 150,
              )
            ]),
            TableRow(children: [
              const Placeholder(
                fallbackHeight: 150,
              ),
              const Placeholder(
                fallbackHeight: 150,
              ),
              Container(),
            ]),
          ],
        ));
  }
}
