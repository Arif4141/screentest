import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:screentest/screen/screen_two.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';
import 'package:screentest/screen/screen_one.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final database = openDatabase(
    join(await getDatabasesPath(), 'data_database.db'),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE data(id INTEGER PRIMARY KEY, email TEXT, first_name TEXT, last_name TEXT, avatar TEXT)',
      );
    },
    version: 1,
  );
  Future<bool> databaseExists(String path) =>
      databaseFactory.databaseExists("data_database.db");
  print(databaseExists);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: ScreenOne(),
    );
  }
}
