import 'dart:convert';

import 'package:flutter/material.dart';

import '../model/user.dart';

class JsonSerialTestPage extends StatefulWidget {
  const JsonSerialTestPage({super.key});

  @override
  State<JsonSerialTestPage> createState() => _JsonSerialTestPageState();
}

class _JsonSerialTestPageState extends State<JsonSerialTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('JsonSerialTestPage'),
        ),
        body: Center(
          child: TextButton(
              onPressed: () {
                const jsonString =
                    '{"name": "John Doe", "email": "john.doe@example.com"}';
                final Map<String, dynamic> userMap = json.decode(jsonString);
                final user = User.fromJson(userMap);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content:
                        Text('Name: ${user.name}' + 'Email: ${user.email}')));
              },
              child: Text('点击序列化json数据')),
        ));
  }
}
