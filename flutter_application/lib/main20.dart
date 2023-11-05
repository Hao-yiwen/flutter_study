import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(title: Text('Flutter Demo')),
            body: Center(
                child: Container(
                    child: const Text('阿里巴巴',
                        style: TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'Ali',
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic))))));
  }
}
