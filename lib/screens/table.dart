import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          /* defaultColumnWidth: const FixedColumnWidth(100), */
          columnWidths: const {
            //la mitad de todo el espacio disponible
            /* 0: FractionColumnWidth(0.5), */
           /*    */
          },
          border: TableBorder.all(),
          children: const [
            TableRow(
              children: [
                RectanguloLarge(),
                RectanguloMedium(),
                RectanguloSmall(),
              ],
            ),
            TableRow(
              children: [
                RectanguloLarge(),
                RectanguloMedium(),
                RectanguloSmall(),
              ],
            ),
            TableRow(
              children: [
                RectanguloLarge(),
                RectanguloMedium(),
                RectanguloSmall(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RectanguloLarge extends StatelessWidget {
  const RectanguloLarge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 200,
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(color: Colors.blue),
    );
  }
}

class RectanguloMedium extends StatelessWidget {
  const RectanguloMedium({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 150,
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(color: Colors.green),
    );
  }
}

class RectanguloSmall extends StatelessWidget {
  const RectanguloSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 100,
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(color: Colors.red),
    );
  }
}
