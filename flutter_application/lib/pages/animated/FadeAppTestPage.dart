import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FadeAppTestPage extends StatefulWidget {
  final String title;

  const FadeAppTestPage({super.key, required this.title});

  @override
  State<FadeAppTestPage> createState() => _FadeAppTestPage();
}

class _FadeAppTestPage extends State<FadeAppTestPage>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: FadeTransition(
          opacity: curve,
          child: const FlutterLogo(
            size: 100,
          ),
        )),
        floatingActionButton: FloatingActionButton(
            tooltip: '褪色',
            onPressed: () {
              controller.forward();
            },
            child: const Icon(Icons.brush)));
  }
}
