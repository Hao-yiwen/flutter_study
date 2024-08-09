import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketTestPage extends StatefulWidget {
  const WebSocketTestPage({super.key});

  @override
  State<WebSocketTestPage> createState() => _WebSocketTestPageState();
}

class _WebSocketTestPageState extends State<WebSocketTestPage> {
  final TextEditingController _controller = TextEditingController();
  final _channel =
      WebSocketChannel.connect(Uri.parse('wss://echo.websocket.events'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Websocket page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Form(
                child: TextFormField(
              controller: _controller,
              decoration: const InputDecoration(labelText: 'Send a message'),
            )),
            const SizedBox(
              height: 24,
            ),
            StreamBuilder(
                stream: _channel.stream,
                builder: (context, snapshot) {
                  return Text(snapshot.hasData ? '${snapshot.data}' : '');
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller.text.isNotEmpty) {
            _channel.sink.add(_controller.text);
          }
        },
        child: const Icon(Icons.send),
      ),
    );
  }

  @override
  void dispose() {
    _channel.sink.close();
    _controller.dispose();
    super.dispose();
  }
}
