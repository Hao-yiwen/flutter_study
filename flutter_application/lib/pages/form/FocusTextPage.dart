import 'package:flutter/material.dart';

class Focustextpage extends StatefulWidget {
  const Focustextpage({super.key});

  @override
  State<Focustextpage> createState() => _FocustextpageState();
}

class _FocustextpageState extends State<Focustextpage> {
  late FocusNode mFocusNode;

  @override
  void initState() {
    super.initState();
    mFocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    mFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FocusTextPage'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const TextField(
                autofocus: true,
              ),
              // The second text field is focused on when a user taps the
              // FloatingActionButton.
              TextField(
                focusNode: mFocusNode,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => mFocusNode.requestFocus(),
          tooltip: 'Focus Second Text Field',
          child: const Icon(Icons.edit),
        ));
  }
}
