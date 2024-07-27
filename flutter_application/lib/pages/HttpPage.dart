// ignore: file_names
import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';

class HttpPage extends StatefulWidget {
  const HttpPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
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
            const Text('Your IP address is:'),
            Text(_ipAddress),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getIPAddress,
        tooltip: 'Get IP Address',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
