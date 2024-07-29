import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  final int initialValue;

  const Counter({Key? key, required this.initialValue}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Counter();
}

class _Counter extends State<Counter> {
  late int _count;

  @override
  void initState() {
    super.initState();
    _count = widget.initialValue;
    print('initState');
  }

  @override
  void didUpdateWidget(covariant Counter oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialValue != widget.initialValue) {
      setState(() {
        _count = widget.initialValue;
      });
      print('didUpdateWidget');
    }
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Count: $_count'),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _count++;
            });
          },
          child: const Text('Increment'),
        ),
      ],
    );
  }
}
