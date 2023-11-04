// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_application/mian11.dart';
// import 'package:flutter_application/mian12.dart';

// // void main() {
// //   runApp(
// //     MaterialApp(
// //       home: Scaffold(
// //         // backgroundColor: Colors.blueGrey[900],
// //         appBar: AppBar(
// //           title: Text('I Am Rich'),
// //           // backgroundColor: Colors.blueGrey[900],
// //         ),
// //         body: const TestWidget(),
// //       ),
// //     )
// //   );
// // }

// void main() {
//   runApp(
//     const MyApp()
//   );
// }


// // class MyApp extends StatelessWidget {
// //   const MyApp({Key? key}) : super(key: key);
  
// //   @override
// //   Widget build(BuildContext context) {
// //     return CupertinoApp(
// //       home: CupertinoPageScaffold(
// //         navigationBar: const CupertinoNavigationBar(
// //           middle: Text('I Am Rich'),
// //         ),
// //         child: Center(
// //           child: Container(
// //             width: 100,
// //             height: 100,
// //             alignment: Alignment.center,
// //             color: Colors.white,
// //             child: const Column(
// //               children: [
// //                 Text('Hello'),
// //                 Icon(Icons.radio_button_unchecked)
// //               ],
// //             )
// //           ),
// //         ),
// //       ));
// //   }
// // }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
  
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         // backgroundColor: Colors.blueGrey[900],
//         appBar: AppBar(
//           title: Text('I Am Rich'),
//           // backgroundColor: Colors.blueGrey[900],
//         ),
//         body: const MyButton(),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({required this.count, super.key});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text('Count: $count');
  }
}

class CounterIncrementor extends StatelessWidget {
  const CounterIncrementor({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Increment'),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CounterIncrementor(onPressed: _increment),
        const SizedBox(width: 16),
        CounterDisplay(count: _counter),
      ],
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter(),
        ),
      ),
    ),
  );
}