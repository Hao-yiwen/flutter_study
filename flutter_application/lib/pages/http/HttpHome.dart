import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HttpHome extends StatelessWidget {
  const HttpHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Http Hoem'),
        ),
        body: ListView(
          children: [
            TextButton(
                onPressed: () =>
                    {GoRouter.of(context).go('/http/HttpAlbumPage')},
                child: const Text('HttpAlbumPage')),
            TextButton(
              child: const Text('HttpPage'),
              onPressed: () => {GoRouter.of(context).go('/http/HttpPage')},
            ),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/http/IsolateTestPage');
                },
                child: Text("IsolateTestPage")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/http/WebSocketTestPage');
                },
                child: Text("WebSocketTestPage")),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).go('/http/JsonSerialTestPage');
                },
                child: Text("JsonSerialTestPage")),
          ],
        ));
  }
}
