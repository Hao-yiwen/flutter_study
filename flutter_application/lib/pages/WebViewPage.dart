import 'package:flutter/material.dart';

class WebViewPage extends StatefulWidget {
  final String url;
  final String title;

  WebViewPage({required Key key, required this.url, required this.title})
      : super(key: key);

  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("webviewpage")),
        body: const Center(
          child: Text("webviewpage"),
        ));
  }
}
