import 'package:flutter/material.dart';

class IconPage extends StatelessWidget {
  const IconPage({Key? key}) : super(key: key);

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
              Expanded(child: Text('Hello', style: TextStyle(fontSize: 20))),
              Expanded(child: Icon(Icons.radio_button_unchecked))
            ],
          )),
    );
  }
}
