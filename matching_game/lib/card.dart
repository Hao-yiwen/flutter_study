import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model.dart';

class FlipCard extends StatefulWidget {
  const FlipCard({Key? key, required this.str, required this.isFront, required this.onTap}) : super(key: key);

  final String str;
  final bool isFront;
  final Function? onTap;

  @override
  State<FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard> {

  @override
  Widget build(BuildContext context) {
    Widget _transitionBuilder(Widget child, Animation<double> animation) {
      final anim = Tween(begin: pi, end: 0).animate(animation);
      return AnimatedBuilder(
          animation: anim,
          builder: (context, widget) {
            return Transform(
              transform: Matrix4.rotationY(anim.value.toDouble()),
              child: child,
              alignment: Alignment.center,
            );
          });
    }

    return GestureDetector(
      onTap: () {
        widget.onTap?.call();
      },
      child: AnimatedSwitcher(
          transitionBuilder: _transitionBuilder,
          duration: Duration(milliseconds: 1000),
          child: widget.isFront
              ? MyCard(key: ValueKey(true), str: widget.str, color: Colors.blue)
              : MyCard(
                  key: ValueKey(false), str: '', color: Colors.green)),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key, required this.str, required this.color})
      : super(key: key);

  final String str;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      width: (cardSize - 8),
      height: (cardSize - 8),
      margin: const EdgeInsets.all(4),
      alignment: Alignment.center,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Text(
        str,
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }
}
