import 'dart:ui';

import 'package:flutter/material.dart';

class Fontfamilypage extends StatelessWidget {
  const Fontfamilypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Search",
            onPressed: () {
              print("Search");
              const snackBar = SnackBar(
                content: Text("Search"),
                duration: Duration(milliseconds: 500),
                backgroundColor: Colors.blueAccent,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          )
        ],
      ),
      body: Container(
          height: 100,
          width: double.infinity,
          color: Colors.blueAccent,
          child: Column(
            children: [
              const Center(
                child: Text('阿里巴巴',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'Ali',
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic)),
              ),
              Center(
                child: Text(
                  "测试",
                  style: Theme.of(context).primaryTextTheme.titleLarge,
                ),
              )
            ],
          )),
    );
  }
}
