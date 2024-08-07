import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BaseHome extends StatelessWidget {
  const BaseHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter基础'),
      ),
      body: ListView(
        children: [
          TextButton(
              onPressed: () => {GoRouter.of(context).go('/BaseHome/ImagePlaceholder')},
              child: const Text('ImagePlaceholder')),
          TextButton(
              onPressed: () => {GoRouter.of(context).go('/BaseHome/VideoPlayerScreen')},
              child: const Text('VideoPlayerScreen')),
          TextButton(
              onPressed: () => {GoRouter.of(context).go('/BaseHome/SvgTransformPage')},
              child: const Text('SvgTransformPage')),
        ],
      ),
    );
  }
}
