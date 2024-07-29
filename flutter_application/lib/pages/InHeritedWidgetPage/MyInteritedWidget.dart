import 'package:flutter/material.dart';

class MyInteritedWidget extends InheritedWidget {
  final int data;

  MyInteritedWidget({
    Key? key, required this.data, required Widget child
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant MyInteritedWidget oldWidget) {
    return oldWidget.data != data;
  }

  static MyInteritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInteritedWidget>();
  }
}