import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransitionPage1 extends StatelessWidget {
  const TransitionPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transition Page 1'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            GoRouter.of(context)
                .go('/AnimatedHome/TransitionPage1/TransitionPage2');
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
