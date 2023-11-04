import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        alignment: Alignment.center,
        color: Colors.white,
        child: const Column(
          children: [
            Text('Hello'),
            Icon(Icons.radio_button_unchecked)
          ],
        )
      ),
    );
  }
}