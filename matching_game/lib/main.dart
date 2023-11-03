import 'dart:math';

import 'package:flutter/material.dart';

import 'card.dart';
import 'model.dart';

void main() {
  // runApp(const MyHomePage());
  runApp(const MaterialApp(
      // title: '猜猜看',
      home: MyHomePage(
        titles: '猜猜看',
      )));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.titles}) : super(key: key);

  final String titles;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> numList = List.generate(16, (index) => candidates[index ~/ 2])
    ..shuffle();
  List<bool> isFrontList = List.generate(16, (index) => false);
  List<String> correntNumList = [];
  Map<String, dynamic> flippedCardInfo = {};
  bool isRunning = false;

  void onCardTap(int idx, String str) {
    final List<bool> newIsFrontList = isFrontList;

    if (flippedCardInfo.isEmpty) {
      newIsFrontList[idx] = true;
      flippedCardInfo = {"idx": idx, "str": str};
    } else {
      if (idx == flippedCardInfo["idx"]) {
        newIsFrontList[idx] = false;
        flippedCardInfo = {};
      } else {
        if (str == flippedCardInfo["str"]) {
          newIsFrontList[idx] = true;

          Future.delayed(Duration(seconds: 1), () {
            setState(() {
              correntNumList = correntNumList..add(str);
            });
          });
          flippedCardInfo = {};
        } else {
          newIsFrontList[idx] = true;
          flippedCardInfo = {};
          Future.delayed(Duration(milliseconds: 1000), () {
            setState(() {
              isFrontList = List.generate(16, (index) => false);
            });
          });
        }
      }
    }
    setState(() {
      isFrontList = newIsFrontList;
    });
  }
  void startGame() {
    numList = List.generate(16, (index) => candidates[index ~/ 2])
      ..shuffle();

    setState(() {
      isRunning = true;
      numList = numList;
      isFrontList = List.generate(16, (index) => true);
      correntNumList = [];
      flippedCardInfo = {};
    });
    
    Future.delayed(Duration(seconds: 3),(){
      setState(() {
        isFrontList = List.generate(16, (index) => false);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titles),
      ),
      body: Stack(children: [
        Container(
          alignment: Alignment(0, 0),
          child: Container(
            width: cardSize * 4,
            child: Wrap(
              children: numList
                  .asMap()
                  .map((idx, num) => MapEntry(
                      idx,
                      correntNumList.contains(num)
                          ? Container(width: cardSize, height: cardSize)
                          : FlipCard(
                              str: num,
                              isFront: isFrontList[idx],
                              onTap: () {
                                onCardTap(idx, num);
                              },
                            )))
                  .values
                  .toList(),
            ),
          ),
        ),
        if (!isRunning)
          GestureDetector(
            onTap: startGame,
            child: Container(
              alignment: Alignment(0,0),
              child: Container(
                width: cardSize * 4,
                height: cardSize * 4,
                color: Colors.white,
                alignment: Alignment.center,
                child: Text(
                  "点击开始游戏",
                  style: TextStyle(fontSize: 32, color: Colors.grey),
                ),
              ),
            ),
          ),
      ]),
      floatingActionButton: FloatingActionButton(
          onPressed: startGame, tooltip: '重新开始', child: Icon(Icons.refresh)),
    );
  }
}
