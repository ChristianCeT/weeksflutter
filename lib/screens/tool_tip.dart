import 'package:flutter/material.dart';

class ToolTipScreen extends StatelessWidget {
  const ToolTipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Tooltip(
          message: "Apreta aqui",
          preferBelow: false,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(20)),
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(shape: const StadiumBorder()),
              onPressed: () {},
              child: const Icon(
                Icons.arrow_back_ios,
              )),
        ),
      ),
    );
  }
}
