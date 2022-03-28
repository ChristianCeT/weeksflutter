import 'package:flutter/material.dart';

class CustomPainterScreen extends StatelessWidget {
  const CustomPainterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 260,
          height: 260,
          /* color: Colors.black12, */
          child: CustomPaint(
            //
            painter: MyPersonalizedPainter(),
          ),
        ),
      ),
    );
  }
}

class MyPersonalizedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = const Color(0xff21232A);
    paint.strokeWidth = 5;
    paint.strokeCap = StrokeCap.round;
    paint.style = PaintingStyle.stroke;

    final path = Path();
    //pruebas
    /* path.lineTo(size.width * 0.5, 0);
    path.lineTo(size.width * 0.5, size.height * 0.5);
    path.lineTo(0, size.height * 0.5);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.5);
    path.lineTo(size.width * 0.5, size.height * 0.5); */

    //primer palo vertical
    path.moveTo(size.width * 0.3333, 0);
    path.lineTo(size.width * 0.3333, size.height);

    //segundo palo vertical
    path.moveTo(size.width * 0.6666, 0);
    path.lineTo(size.width * 0.6666, size.height);

    //primer palo horizontal
    path.moveTo(0, size.height * 0.3333);
    path.lineTo(size.width, size.height * 0.3333);

     //segundo palo horizontal
    path.moveTo(0, size.height * 0.6666);
    path.lineTo(size.width, size.height * 0.6666);

    canvas.drawPath(path, paint);
  }

  //sirve para redibujar el painter
  @override
  bool shouldRepaint(MyPersonalizedPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(MyPersonalizedPainter oldDelegate) => false;
}
