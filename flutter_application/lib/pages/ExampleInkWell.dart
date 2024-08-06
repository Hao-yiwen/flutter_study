import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExampleInkwell extends StatelessWidget {
  const ExampleInkwell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Example InkWell"),
        ),
        body: Center(
            child: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Tap'),
                  ));
                },
                child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: Text('Flat button'),
                ))));
  }
}
