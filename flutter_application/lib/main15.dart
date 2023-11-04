import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter layout demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("flutter layout demo"),
        ),
        body: const Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}
