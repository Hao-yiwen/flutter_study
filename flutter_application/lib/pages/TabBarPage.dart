import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar Demo'),
        bottom: TabBar(
          controller: controller,
          tabs: const [
            Tab(icon: Icon(Icons.access_alarm)),
            Tab(icon: Icon(Icons.access_time)),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          Center(child: Text('Alarm')),
          Text("12312"),
        ],
      ),
    );
  }
}
