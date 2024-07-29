import 'package:flutter/material.dart';
import 'package:flutter_application/pages/lifeCycle/DependencyWidget.dart';

class DependentCounter extends StatefulWidget {
  const DependentCounter({Key? key}) : super(key: key);

  @override
  _DependentCounterState createState() => _DependentCounterState();
}

class _DependentCounterState extends State<DependentCounter> {
  String? _debugLifecycleState;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final dependencyWidget = Dependencywidget.of(context);
    if (dependencyWidget != null) {
      setState(() {
        _debugLifecycleState = dependencyWidget.dependencyValue;
      });
      print('didChangeDependencies: $_debugLifecycleState');
    }
  }

  @override
  Widget build(BuildContext context) {
    print('build (DependentCounter): $_debugLifecycleState');
    return Center(
      child: Text('Dependencies: $_debugLifecycleState'),
    );
  }
}
