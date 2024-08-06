import 'package:flutter/material.dart';
import 'package:flutter_shaders/flutter_shaders.dart';
import 'dart:ui' as ui;

class Exampleshader extends StatefulWidget {
  const Exampleshader({super.key});

  @override
  State<Exampleshader> createState() => _ExampleshaderState();
}

class _ExampleshaderState extends State<Exampleshader> {
  @override
  void initState() {
    super.initState();
    _loadShader();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shader Example'),
      ),
      body: ShaderBuilder(
        assetKey: 'assets/shader.frag',
        (context, shader, child) => CustomPaint(
          size: MediaQuery.of(context).size,
          painter: ShaderPainter(shader: shader),
        ),
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  Future<void> _loadShader() async {}
}

class ShaderPainter extends CustomPainter {
  ShaderPainter({required this.shader});

  ui.FragmentShader shader;

  @override
  void paint(Canvas canvas, Size size) {
    shader.setFloat(0, size.width);
    shader.setFloat(1, size.height);

    final paint = Paint()..shader = shader;
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
  }

  @override
  bool shouldRepaint(ShaderPainter oldDelegate) {
    return false;
  }
}
