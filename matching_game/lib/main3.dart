import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      const MaterialApp(title: 'My app', home: SafeArea(child: MyScafflold())));
}

class MyScafflold extends StatelessWidget {
  const MyScafflold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        MyAppBar(
          title: Text(
            'Example Title',
            style: Theme.of(context).primaryTextTheme.headline6
          )
        ),
        const Expanded(child: Center(child: Text('Hello world')))
      ],
    ));
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key, required this.title}) : super(key: key);

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          Expanded(
            child: title
          ),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      )
    );
  }
}
