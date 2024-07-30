import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Redbox extends LeafRenderObjectWidget {
  const Redbox({super.key});

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderRedBox();
  }

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderObject renderObject) {
    super.updateRenderObject(context, renderObject);
    print('updateRenderObject');
  }
}

class RenderRedBox extends RenderBox {
  @override
  void performLayout() {
    size = constraints.constrain(const Size(100, 100));
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final Paint paint = Paint()..color = const Color(0xFFFF0000);
    context.canvas.drawRect(offset & size, paint);
  }

  @override
  void attach(PipelineOwner owner) {
    super.attach(owner);
    print('attach');
  }

  @override
  void reassemble() {
    super.reassemble();
    print('reassemble');
  }

  @override
  bool hitTestSelf(Offset position) {
    return true;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('custom property', 'value'));
  }
}

class RedBoxPage extends StatelessWidget {
  const RedBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RedBoxPage'),
      ),
      body: Center(
        child: Redbox(),
      ),
    );
  }
}
