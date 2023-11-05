import 'package:flutter/material.dart';
import 'package:flutter_application/MyPlugin.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _nativeData = "waiting for native data...";

  @override
  void initState() {
    // TODO: implement initState
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