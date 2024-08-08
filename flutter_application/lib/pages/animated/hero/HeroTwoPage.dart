import 'package:flutter/material.dart';

class HeroTwoPage extends StatelessWidget {
  const HeroTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Two Page'),
      ),
      body: Center(
        child: Hero(
            tag: "hero-tag",
            child: Image.asset(
              'assets/pic1.png',
              height: 300,
              width: 300,
            )),
      ),
    );
  }
}
