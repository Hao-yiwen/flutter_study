import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';

class SvgTransformPage extends StatelessWidget {
  const SvgTransformPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SvgTransformPage'),
      ),
      body: Column(
        children: [
          const Divider(
            height: 10,
          ),
          const VectorGraphic(loader: AssetBytesLoader('assets/svg.svg')),
        ],
      ),
    );
  }
}
