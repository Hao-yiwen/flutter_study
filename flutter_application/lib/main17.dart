import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// This is the main function which runs the Flutter application.
/// It creates a MaterialApp widget with a title and a MyWidget as the home page.
/// 
/// The MyWidget class is a StatelessWidget that returns a Scaffold widget with an AppBar and a Center widget.
/// The Center widget contains a CupertinoButton widget with a Text child and an empty onPressed function.
void main() {
  runApp(const MaterialApp(
    title: 'Flutter Tutorial',
    home: MyWidget(),
  ));
}

/// This is a StatelessWidget that returns a Scaffold widget with an AppBar and a Center widget.
/// The Center widget contains a CupertinoButton widget with a Text child and an empty onPressed function.
class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: CupertinoButton(
          child: Text('Cupertino Button'),
          onPressed: () {},
        ),
      ),
    );
  }
}