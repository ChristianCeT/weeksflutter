import 'package:flutter/material.dart';

class FittedBoxScreen extends StatelessWidget {
  const FittedBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fitted_box"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 1000,
              height: 400,
              color: Colors.blue,
              child: const FittedBox(
                alignment: Alignment.topCenter,
                clipBehavior: Clip.hardEdge,
                child: Image(
                  image: NetworkImage(
                      'https://i.blogs.es/55d618/league_of_legends___project__jhin_wallpaper_by_mr_booker-dbtow1x/1366_2000.jpg'),
                ),
              ),
            ),
            const Divider(),
            /* const Image(
              image: NetworkImage(
                  'https://i.blogs.es/55d618/league_of_legends___project__jhin_wallpaper_by_mr_booker-dbtow1x/1366_2000.jpg'),
            ) */
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
