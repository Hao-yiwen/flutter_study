import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HeroFirstPage extends StatelessWidget {
  const HeroFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Two Page'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            GoRouter.of(context).go('/AnimatedHome/HeroFirstPage/HeroTwoPage');
          },
          child: Hero(
              tag: "hero-tag",
              child: Image.asset(
                'assets/pic1.png',
                height: 100,
                width: 100,
              )),
        ),
      ),
    );
  }
}
