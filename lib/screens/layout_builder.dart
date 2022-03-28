import 'package:flutter/material.dart';

class LayoutBuilderScreen extends StatelessWidget {
  const LayoutBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: ColumnasContainer(),
    ));
  }
}

class ColumnasContainer extends StatelessWidget {
  const ColumnasContainer({
    Key? key,
  }) : super(key: key);

  final children = const [
    Expanded(child: RectanguloSmall()),
    Expanded(child: RectanguloSmall()),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return (constraints.maxWidth < 600)
            ? Column(
                children: children,
              )
            : Row(
                children: children,
              );
      },
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
      margin: const EdgeInsets.all(8.0),
      width: double.infinity,
      height: 150,
      decoration: const BoxDecoration(color: Colors.red),
    );
  }
}
