import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:async';

void main() async => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SQLite Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Database database;

  @override
  void initState() {
    super.initState();
    initializeDatabase();
  }

  Future<void> initializeDatabase() async {
    print(12312);
    // 获取数据库路径
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'my_database.db');

    // 打开/创建数据库
    database = await openDatabase(path, version: 1, onCreate: (Database db, int version) async {
      // 创建表
      await db.execute('CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT)');
    });

    // 插入数据
    await insertTestData();
    
    // 查询数据
    List<Map> list = await database.rawQuery('SELECT * FROM Test');
    print(list);
  }

  Future<void> insertTestData() async {
    await database.transaction((txn) async {
      int id1 = await txn.rawInsert(
        'INSERT INTO Test(name) VALUES("some name")'
      );
      print('inserted1: $id1');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter SQLite Demo'),
      ),
      body: Center(
        child: Text('Check console for SQL operations results.'),
      ),
    );
  }

  @override
  void dispose() {
    database.close();
    super.dispose();
  }
}
