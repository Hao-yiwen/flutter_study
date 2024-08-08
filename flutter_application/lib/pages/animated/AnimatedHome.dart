import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AnimatedHome extends StatelessWidget {
  const AnimatedHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('flutter动画'),
        ),
        body: ListView(
          children: [
            TextButton(
                onPressed: () =>
                    {GoRouter.of(context).go('/AnimatedHome/FadeAppTestPage')},
                child: const Text('FadeAppTestPage')),
            TextButton(
                onPressed: () =>
                    {GoRouter.of(context).go('/AnimatedHome/RotatingBoxPage')},
                child: const Text('RotatingBoxPage')),
            TextButton(
                onPressed: () => {
                      GoRouter.of(context)
                          .go('/AnimatedHome/AnimatedContainerPage')
                    },
                child: const Text('AnimatedContainerPage')),
            TextButton(
                onPressed: () => {
                      GoRouter.of(context)
                          .go('/AnimatedHome/AnimatedOpacityPage')
                    },
                child: const Text('AnimatedOpacityPage')),
            TextButton(
                onPressed: () =>
                    {GoRouter.of(context).go('/AnimatedHome/HeroFirstPage')},
                child: const Text('HeroFirstPage')),
            TextButton(
                onPressed: () =>
                    {GoRouter.of(context).go('/AnimatedHome/TransitionPage1')},
                child: const Text('TransitionPage1')),
            TextButton(
                onPressed: () => {
                      GoRouter.of(context)
                          .go('/AnimatedHome/PhysicsCardDragDemo')
                    },
                child: const Text('PhysicsCardDragDemo')),
          ],
        ));
  }
}
