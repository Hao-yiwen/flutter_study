import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url = Uri.parse('https://httpbin.org/ip');
  final httpClient = HttpClient();
  String _ipAddress = 'Unknown';

  Future<void> getIPAddress() async {
    final request = await httpClient.getUrl(url);
    final response = await request.close();
    final responseBody = await response.transform(utf8.decoder).join();
    final String ip = jsonDecode(responseBody)['origin'];
    print(jsonDecode(responseBody));
    setState(() {
      _ipAddress = ip;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IP Address'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Your IP address is:'),
            Text('$_ipAddress'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getIPAddress,
        tooltip: 'Get IP Address',
        child: Icon(Icons.refresh),
      ),
    );
  }
}