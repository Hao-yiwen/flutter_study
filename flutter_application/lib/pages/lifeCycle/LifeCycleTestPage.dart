import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/pages/lifeCycle/DependencyWidget.dart';
import 'package:flutter_application/pages/lifeCycle/DependentCounter.dart';

import 'Counter.dart';

class Lifecycletestpage extends StatefulWidget {
  const Lifecycletestpage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Lifecycletestpage();
  }
}

class _Lifecycletestpage extends State<Lifecycletestpage> {
  int _counterValue = 0;
  String _dependencyValue = "Dependency Value";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LifeCycle Test Page'),
      ),
      body: Dependencywidget(
        dependencyValue: _dependencyValue,
        child: Column(
          children: [
            Counter(initialValue: _counterValue),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _counterValue++;
                });
              },
              child: Text('Increment Counter'),
            ),
            DependentCounter(),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _dependencyValue = 'New Dependency Value';
                  });
                },
                child: Text('Change Dependency Value'))
          ],
        ),
      ),
    );
  }
}
