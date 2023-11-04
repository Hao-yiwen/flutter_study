import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            print('MyButton was tapped!');
          },
          onLongPress: () {
            print('MyButton was long pressed!');
          },
          child: Center(
            child: Container(
                height: 50,
                width: 200,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.lightGreen[500]),
                child: const Center(
                    child: Column(
                  children: [
                    Text('Engage'),
                  ],
                ))),
          ),
        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            print('Icon button was pressed!');
          }
        )
      ],
    );
  }
}
