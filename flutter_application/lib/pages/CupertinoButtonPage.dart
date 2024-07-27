import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// This is the main function which runs the Flutter application.
/// It creates a MaterialApp widget with a title and a CupertinoButton as the home page.
///
/// The CupertinoButton class is a StatelessWidget that returns a Scaffold widget with an AppBar and a Center widget.
/// The Center widget contains a CupertinoButton widget with a Text child and an empty onPressed function.

/// This is a StatelessWidget that returns a Scaffold widget with an AppBar and a Center widget.
/// The Center widget contains a CupertinoButton widget with a Text child and an empty onPressed function.
class CupertinoButtonPage extends StatelessWidget {
  const CupertinoButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: CupertinoButton(
          child: const Text('Cupertino Button'),
          onPressed: () {},
        ),
      ),
    );
  }
}
