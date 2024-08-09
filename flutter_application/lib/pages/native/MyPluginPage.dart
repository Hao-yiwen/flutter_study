import 'package:flutter/material.dart';
import 'package:flutter_application/pages/native/MyPlugin.dart';

class MyPluginPage extends StatefulWidget {
  const MyPluginPage({super.key});

  @override
  State<MyPluginPage> createState() => _MyPluginPageState();
}

class _MyPluginPageState extends State<MyPluginPage> {
  String _nativeData = "waiting for native data...";

  @override
  void initState() {
    super.initState();
    _getNativeData();
  }

  void _getNativeData() async {
    MyPlugin myPlugin = MyPlugin();
    String data = await myPlugin.platformVersion();
    setState(() {
      _nativeData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(_nativeData),
            ],
          ),
        ));
  }
}
