import 'package:flutter/material.dart';

class GoRouterExtradata extends StatelessWidget {
  const GoRouterExtradata({super.key, required this.title, this.url = ""});

  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          child: TextButton(
              onPressed: () {
                Navigator.of(context).pop('返回值：$url');
              },
              child: const Text('GoRouterExtradata'))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: url.isNotEmpty ? Text(url) : Text('No URL')));
        },
        tooltip: 'Back',
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
