import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rotatingboxpage extends StatefulWidget {
  const Rotatingboxpage({super.key});

  @override
  State<Rotatingboxpage> createState() => _Rotatingboxpage();
}

class _Rotatingboxpage extends State<Rotatingboxpage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: Container(
        width: 100,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 100,
        color: Colors.blue,
      ),
      builder: (context, child) {
        // return Transform.rotate(
        //   child: child,
        //   angle: _controller.value * 2 * 3.14159,
        // );
        return Transform.translate(
            offset: Offset(100 * _controller.value, 100 * _controller.value),
            child: child);
      },
    );
  }
}

class RotatingBoxPage extends StatelessWidget {
  const RotatingBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RotatingBoxPage")),
      body: Center(
        child: Container(
          child: Rotatingboxpage(),
        ),
      ),
    );
  }
}
