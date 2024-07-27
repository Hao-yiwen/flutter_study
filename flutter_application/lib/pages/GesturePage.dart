import 'package:flutter/material.dart';

class GesturePage extends StatelessWidget {
  const GesturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Scaffold(
          appBar: AppBar(title: const Text('Gestures')),
          body: const Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Tap, Long Press, Swipe Horizontally or Vertically'),
            ],
          )),
        ),
        onTap: () {
          print('Tapped');
        },
        onLongPress: () {
          print('Long Pressed');
        },
        onVerticalDragEnd: (value) {
          print('Swiped Vertically');
        },
        onHorizontalDragEnd: (value) {
          print('Swiped Horizontally');
        },
      ),
    );
  }
}
