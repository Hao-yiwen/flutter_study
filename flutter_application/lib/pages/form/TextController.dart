import 'package:flutter/material.dart';

class TextController extends StatefulWidget {
  const TextController({super.key});

  @override
  State<TextController> createState() {
    return _TextController();
  }
}

class _TextController extends State<TextController> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    myController.addListener(_printLatestValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Retrieve Text Input"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              onChanged: (text) {
                print('First text field: $text (${text.characters.length})');
              },
              // 定义placeholder
              decoration: InputDecoration(
                hintText: 'Enter a search term',
              ),
            ),
            TextField(
              controller: myController,
              decoration: InputDecoration(
                hintText: 'Enter a search term',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text(myController.text),
                );
              });
        },
        tooltip: "Show me the value",
        child: const Icon(Icons.text_fields),
      ),
    );
  }

  void _printLatestValue() {
    final text = myController.text;
    print('Second text field: $text (${text.characters.length})');
  }
}
