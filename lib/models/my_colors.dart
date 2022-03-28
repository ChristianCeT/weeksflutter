import 'package:flutter/material.dart';

class MyColorsW extends InheritedWidget {
  const MyColorsW({
    Key? key,
    required this.child,
    required this.color1,
    required this.color2,
  }) : super(key: key, child: child);

  final Widget child;
  final Color color1;
  final Color color2;

  static MyColorsW? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyColorsW>();
  }

  @override
  bool updateShouldNotify(MyColorsW oldWidget) {
    return color1 != oldWidget.color1 || color2 != oldWidget.color2;
  }
}
