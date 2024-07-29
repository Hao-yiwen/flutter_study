import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MyPainter.dart';

class MypainterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mypainter"),
      ),
      body: Center(
          child: buildContainer()),
    );
  }

  Container buildContainer() {
    return Container(
          color: Colors.purpleAccent,
          child: CustomPaint(
                  size: Size(200, 200),
                  painter: Mypainter()
                ),
        );
  }
}
