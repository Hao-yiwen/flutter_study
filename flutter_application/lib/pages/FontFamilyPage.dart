import 'package:flutter/material.dart';

class Fontfamilypage extends StatelessWidget {
  const Fontfamilypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Flutter Demo')),
        body: const Center(
            child: Text('阿里巴巴',
                style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Ali',
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic))));
  }
}
