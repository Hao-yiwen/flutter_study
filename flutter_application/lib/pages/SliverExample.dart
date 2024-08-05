import 'package:flutter/material.dart';

class SliverExample extends StatelessWidget {
  const SliverExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 150.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Sliver Example"),
              background: Image.network(
                "https://via.placeholder.com/800x400",
                fit: BoxFit.cover,
              ),
            ),
            // flexibleSpace: Placeholder(),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) =>
                      ListTile(title: Text("Item $index")),
                  childCount: 50))
        ],
      ),
    );
  }
}
