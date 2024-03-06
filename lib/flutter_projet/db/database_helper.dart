import 'package:path/path.dart';
import 'package:project1/flutter_projet/models/model_employee.dart';

import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  DataBaseHelper._privateConstructor();

  static final DataBaseHelper instance = DataBaseHelper._privateConstructor();

  DataBaseHelper();

  static Database? _database;

  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'gestionEmployee.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
      //onUpgrade:_onupgrade,
      //onDowngrade:
    );
  }

  Future _onCreate(Database db, int version) async {
    print("Creatin database...........");
    await db.execute('''
      CREATE TABLE Employee(
      id INTEGER PRIMARY KEY ,
      matricule TEXT NOT NULL ,
      nom TEXT NOT NULL ,
      prenom TEXT NOT NULL ,
      age INTEGER
      );
      ''');
  }

  Future<int> add(Employee emp) async {
    Database db = await instance.database;
    return await db.insert('Employee', emp.toMap());
  }

  Future<dynamic> getAllEmployees() async {
    Database db = await instance.database;
    return db.rawQuery("SELECT * FROM Employee");
  }
}
