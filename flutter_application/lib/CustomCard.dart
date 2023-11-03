import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.index, required this.onPress});

  final int index;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: <Widget>[
        Text('Card $index'),
        TextButton(onPressed: onPress, child: const Text('Press me')),
      ],
    ));
  }
}

class UseCard extends StatelessWidget {
  const UseCard({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        index: index,
        onPress: () {
          print('Card $index pressed');
        });
  }
}
