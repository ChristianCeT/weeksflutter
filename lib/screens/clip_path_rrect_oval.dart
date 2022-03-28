import 'package:flutter/material.dart';

class ClipScreen extends StatelessWidget {
  const ClipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const MyContainer(
          myWidget: ClipOval(
            /* borderRadius: BorderRadius.circular(50), */
            child: Image(
              image: NetworkImage('https://i.blogs.es/9ae38a/jhin/840_560.jpg'),
            ),
          ),
        ),
        const MyContainer(
          myWidget: ClipRRect(
            /* borderRadius: BorderRadius.circular(50), */
            borderRadius: BorderRadius.only(topLeft: Radius.circular(100)),
            child: Image(
              image: NetworkImage('https://i.blogs.es/9ae38a/jhin/840_560.jpg'),
            ),
          ),
        ),
        MyContainer(
          myWidget: ClipPath(
            /* borderRadius: BorderRadius.circular(50), */
            clipper: MyCustomClipper(),
            child: const Image(
              image: NetworkImage('https://i.blogs.es/9ae38a/jhin/840_560.jpg'),
            ),
          ),
        ),
      ],
    ));
  }
}

class MyContainer extends StatelessWidget {
  final Widget myWidget;
  const MyContainer({
    Key? key,
    required this.myWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(30),
        alignment: Alignment.center,
        child: myWidget);
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    //con esto digo que hay un punto
    path.lineTo(0, 0);
    //con esto tengo una linea
    path.lineTo(0, size.height);
    //con esto ya tomo todo el ancho del contenedor
    path.lineTo(size.width, size.height);

    path.lineTo(size.width, size.height * 0.9);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
