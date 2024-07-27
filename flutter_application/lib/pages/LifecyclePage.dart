import 'package:flutter/material.dart';

class LifecyclePage extends StatefulWidget {
  const LifecyclePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LifecyclePageState createState() => _LifecyclePageState();
}

class _LifecyclePageState extends State<LifecyclePage> {
  @override
  void initState() {
    super.initState();
    print("initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  void didUpdateWidget(LifecyclePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lifecycle Demo'),
      ),
      body: const Center(
        child: Text(
          'Lifecycle Demo',
        ),
      ),
    );
  }
}
