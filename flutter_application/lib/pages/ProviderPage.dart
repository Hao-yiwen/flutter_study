import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

void main() {
  runApp(ChangeNotifierProvider(
    child: MyApp(),
    create: (context) => Counter(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count:'),
            Consumer<Counter>(builder: (context, Counter counter, child) {
              return Text('${counter.count}');
            }),
            SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  Provider.of<Counter>(context, listen: false).increment();
                },
                child: Text('Increment'))
          ],
        )),
      ),
    );
  }
}
