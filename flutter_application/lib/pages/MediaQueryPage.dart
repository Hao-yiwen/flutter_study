import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mediaquerypage extends StatelessWidget {
  const Mediaquerypage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;
    final padding = mediaQueryData.padding;
    final devicePixelRatio = mediaQueryData.devicePixelRatio;
    final textScaler = mediaQueryData.textScaler;

    return Scaffold(
        appBar: AppBar(
          title: const Text('MediaQuery Example'),
        ),
        body: Padding(
            padding: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('屏幕宽度' + screenWidth.toString()),
                Text('屏幕高度' + screenHeight.toString()),
                Text('padding' + padding.toString()),
                Text('文本缩放' + textScaler.toString()),
                if (screenHeight < 600)
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                    child: Text('小屏幕'),
                  )
                else
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                    child: Text('大屏幕'),
                  )
              ],
            )));
  }
}
