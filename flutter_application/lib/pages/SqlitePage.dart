import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:async';

class SqlitePage extends StatefulWidget {
  @override
  _SqlitePageState createState() => _SqlitePageState();
}

class _SqlitePageState extends State<SqlitePage> {
  late Database database;

  @override
  void initState() {
    super.initState();
    initializeDatabase();
  }

  Future<void> initializeDatabase() async {
    try {
      // 获取数据库路径
      String databasePath = await getDatabasesPath();
      String path = join(databasePath, 'my_database.db');

      // 打开/创建数据库
      database = await openDatabase(path, version: 1,
          onCreate: (Database db, int version) async {
        // 创建表
        await db
            .execute('CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT)');
      });

      // 插入数据
      await insertTestData();

      // 查询数据
      List<Map> list = await database.rawQuery('SELECT * FROM Test');
      print(list);
    } catch (e) {
      print('Error initializing database: $e');
    }
  }

  Future<void> insertTestData() async {
    await database.transaction((txn) async {
      int id1 =
          await txn.rawInsert('INSERT INTO Test(name) VALUES("some name")');
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

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Database database;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeDatabase();
  }

  Future<void> initializeDatabase() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath + 'my.db');

    database = await openDatabase(path,
        version: 1,
        onCreate: (db, version) async => {
              await db.execute(
                  'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT)')
            });

    // 插入数据
    await insertTestData();

    // 查询数据
    List<Map> list = await database.rawQuery('SELECT * FROM Test');
    print(list);
  }

  Future<void> insertTestData() async {
    await database.transaction((txn) async {
      int id1 = await txn.rawInsert('INSERT INTO Test(name) VALUES("item1")');
      print("inserting: $id1");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sqllite Demo'),
      ),
      body: Center(
        child: Text('Sqllite Demo'),
      ),
    );
  }

  @override
  void dispose() {
    database.close();
    super.dispose();
  }
}
