import 'dart:convert';
import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class IsolateTestPage extends StatefulWidget {
  @override
  State<IsolateTestPage> createState() => _IsolateTestPageState();
}

class _IsolateTestPageState extends State<IsolateTestPage> {
  List widgets = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sample app"),
      ),
      body: getBody(),
    );
  }

  Future<void> loadData() async {
    ReceivePort receivePort = ReceivePort();
    await Isolate.spawn(dataLoader, receivePort.sendPort);

    SendPort sendPort = await receivePort.first;

    ReceivePort response = ReceivePort();
    sendPort.send(
        ['https://jsonplaceholder.typicode.com/posts', response.sendPort]);
    List msg = await response.first;

    setState(() {
      widgets = msg;
    });
  }

  static Future<void> dataLoader(SendPort sendPort) async {
    ReceivePort receivePort = ReceivePort();

    sendPort.send(receivePort.sendPort);

    await for (var msg in receivePort) {
      String data = msg[0];
      SendPort replyTo = msg[1];

      String dataUrl = data;
      Response response = await get(Uri.parse(dataUrl));
      replyTo.send(jsonDecode(response.body));
    }
  }

  getBody() {
    bool showLodingDialog = widgets.isEmpty;
    if (showLodingDialog) {
      return getProgressDialog();
    } else {
      return getListView();
    }
  }

  getProgressDialog() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  getListView() {
    return ListView.builder(
      itemCount: widgets.length,
        itemBuilder: (context, position) {
          return getRow(position);
        });
  }

  getRow(int position) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text('Row ${widgets[position]["title"]}'),
    );
  }
}
