import 'package:flutter/material.dart';
import 'package:flutter_application/pages/InHeritedWidgetPage/MyInteritedWidget.dart';

class Inheritedtestpage extends StatefulWidget {
  const Inheritedtestpage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Inheritedtestpage();
  }
}

class _Inheritedtestpage extends State<Inheritedtestpage> {
  int _data = 0;

  void _increament() {
    print('Increment');
    setState(() {
      _data++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyInteritedWidget(
        data: _data,
        child: Scaffold(
          appBar: AppBar(
            title: Text('InheritedTestPage'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DateDisplay(),
                ElevatedButton(
                  onPressed: _increament,
                  child: Text("Increment"),
                )
              ],
            ),
          ),
        ));
  }
}

class DateDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Date: ${MyInteritedWidget.of(context)!.data}");
  }
}
