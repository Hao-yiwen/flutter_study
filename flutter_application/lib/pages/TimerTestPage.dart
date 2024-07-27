/// Flutter
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application/pages/CustomCard.dart';
import 'package:shared_preferences/shared_preferences.dart';

// class TimerTestPage extends StatelessWidget {
//   const TimerTestPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter Demo',
//         home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Flutter Demo'),
//           ),
//           body: Column(children: [Image.asset('assets/empty.png'),Image.network('https://docs.flutter.dev/assets/images/docs/owl.jpg')]),
//         ));
//   }
// }

// class TimerTestPage extends StatelessWidget {
//   const TimerTestPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var data = [
//       'Hello',
//       'World',
//     ];
//     return MaterialApp(
//       home: Scaffold(
//         body: ListView.builder(
//           itemCount: data.length,
//           itemBuilder: (context, index) {
//             return Text(data[index]);
//           },
//         ),
//       ),
//     );
//   }
// }

// class TimerTestPage extends StatelessWidget {
//   const TimerTestPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter Demo',
//         home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Flutter Demo'),
//           ),
//           body: const MyCanvasWidget()
//         ));
//   }
// }

// class TimerTestPage extends StatelessWidget {
//   const TimerTestPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Column(children: [
//       Container(
//         width: 200,
//         height: 200,
//         color: Colors.amber,
//       ),
//       Container(
//         width: 200,
//         height: 200,
//         color: Colors.blue,
//       ),
//       Container(
//         width: 200,
//         height: 200,
//         color: Colors.red,
//       ),
//     ]));
//   }
// }

// class MyCanvasPainter extends CustomPainter {
//   const MyCanvasPainter();

//   @override
//   void paint(Canvas canvas, Size size) {
//     final Paint paint = Paint()..color = Colors.amber;
//     canvas.drawCircle(const Offset(100, 200), 40, paint);
//     final Paint paintRect = Paint()..color = Colors.lightBlue;
//     final Rect rect = Rect.fromPoints(
//       const Offset(150, 300),
//       const Offset(300, 400),
//     );
//     canvas.drawRect(rect, paintRect);
//   }

//   @override
//   bool shouldRepaint(MyCanvasPainter oldDelegate) => false;
// }

// class MyCanvasWidget extends StatelessWidget {
//   const MyCanvasWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: CustomPaint(painter: MyCanvasPainter()),
//     );
//   }
// }

// class TimerTestPage extends StatelessWidget {
//   const TimerTestPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: const Alignment(0, 0),
//       children: [
//         const CircleAvatar(
//           backgroundImage: AssetImage('assets/empty.png'),
//           radius: 100,
//         ),
//         Container(
//           // child: const Text('flutter'),
//           color: Colors.amber,
//           width: 20,
//           height: 20,
//         )
//         ],
//     );
//   }
// }

// class TimerTestPage extends StatelessWidget {
//   const TimerTestPage({super.key});

//   static const TextStyle myStyle = TextStyle(
//     color: Colors.red,
//     fontSize: 24,
//     fontWeight: FontWeight.bold,
//   );

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter Demo',
//         home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Flutter Demo'),
//           ),
//           body: const Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//               Text('Hello', style: myStyle,),
//               Padding(
//                 padding: EdgeInsets.all(20.0),
//                 child: Icon(Icons.lightbulb_outline, color: Colors.redAccent)
//               ),
//             ]),
//           ),
//         ));
//   }
// }

class TimerTestPage extends StatefulWidget {
  const TimerTestPage({super.key, required this.text});

  final String text;

  @override
  State<TimerTestPage> createState() => _TimerTestPageState();
}

class _TimerTestPageState extends State<TimerTestPage> {
  bool showText = true;
  bool tooState = true;
  Timer? t2;

  void toggleBlinkState() {
    setState(() {
      tooState = !tooState;
    });
    if (!tooState) {
      t2 = Timer.periodic(const Duration(milliseconds: 1000), (t) {
        toggleShowText();
      });
    } else {
      t2?.cancel();
    }
  }

  void toggleShowText() {
    setState(() {
      showText = !showText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Test Demo'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (showText) Text(widget.text),
          ElevatedButton(
              onPressed: toggleBlinkState,
              child: tooState ? const Text('Start') : const Text('Stop'))
        ],
      )),
    );
  }
}
