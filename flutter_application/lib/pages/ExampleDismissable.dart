import 'package:flutter/material.dart';

class ExampleDismissable extends StatefulWidget {
  const ExampleDismissable({super.key});

  @override
  State<ExampleDismissable> createState() => _ExampleDismissableState();
}

class _ExampleDismissableState extends State<ExampleDismissable> {
  final items = List<String>.generate(20, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ExampleDismissable"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
              key: Key(item),
              background: Container(
                color: Colors.red,
              ),
              onDismissed: (direction) {
                setState(() {
                  items.removeAt(index);
                });

                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('$item dismissed')));
              },
              child: ListTile(
                title: Text(item),
              ));
        },
        itemCount: items.length,
      ),
    );
  }
}
