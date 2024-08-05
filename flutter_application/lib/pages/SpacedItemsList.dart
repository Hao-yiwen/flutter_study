import 'package:flutter/material.dart';

class SpacedItemsList extends StatefulWidget {
  const SpacedItemsList({super.key});

  @override
  State<SpacedItemsList> createState() {
    return _SpacedItemsListState();
  }
}

class _SpacedItemsListState extends State<SpacedItemsList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spaced Items List'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 1000),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ItemChild(text: 'Item 1'),
                  ItemChild(text: 'Item 2'),
                  ItemChild(text: 'Item 3'),
                  ItemChild(text: 'Item 4'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ItemChild extends StatelessWidget {
  final String text;

  const ItemChild({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}