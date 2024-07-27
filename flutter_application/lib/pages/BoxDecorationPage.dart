import 'package:flutter/material.dart';

class BoxDecorationPage extends StatelessWidget {
  const BoxDecorationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GestureDetector(
              onTap: () {
                print('BoxDecorationPage was tapped!');
              },
              onLongPress: () {
                print('BoxDecorationPage was long pressed!');
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
              )),
        ),
        Expanded(
            child: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  print('Icon button was pressed!');
                }))
      ],
    );
  }
}
