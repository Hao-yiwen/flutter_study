import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Sqllite Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage()
    );
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

    database = await openDatabase(path, version: 1, onCreate: (db, version) async => {
      await db.execute('CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT)')
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