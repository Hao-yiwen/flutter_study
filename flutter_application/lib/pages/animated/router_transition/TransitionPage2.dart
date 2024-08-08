import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransitionPage2 extends StatelessWidget {
  const TransitionPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transition Page 1'),
      ),
      body: Center(
          child: Container(
        height: 200,
        width: 200,
        color: Colors.purpleAccent,
      )),
    );
  }
}
