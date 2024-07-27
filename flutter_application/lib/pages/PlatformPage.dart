import 'package:flutter/material.dart';

class PlatformPage extends StatelessWidget {
  const PlatformPage({super.key});

  @override
  Widget build(BuildContext context) {
    String test() {
      final platform = Theme.of(context).platform;
      if (platform == TargetPlatform.iOS) {
        return 'iOS';
      }
      if (platform == TargetPlatform.android) {
        return 'android';
      }
      if (platform == TargetPlatform.fuchsia) {
        return 'fuchsia';
      }
      return 'not recognized ';
    }

    return Scaffold(
        appBar: AppBar(title: const Text('Navigation Demo')),
        body: Center(child: Text(test())));
  }
}
