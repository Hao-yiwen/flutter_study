import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dependencywidget extends InheritedWidget {
  final String dependencyValue;

  Dependencywidget(
      {Key? key, required this.dependencyValue, required Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant Dependencywidget oldWidget) {
    return oldWidget.dependencyValue != dependencyValue;
  }

  static Dependencywidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Dependencywidget>();
  }
}
