import 'package:path/path.dart';
import 'package:project1/pages/CustomValider.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  DataBaseHelper._privateConstructor();

  static final DataBaseHelper instance = DataBaseHelper._privateConstructor();

  DataBaseHelper();

  static Database? _database;

  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'stock.db');

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
      CREATE TABLE Livre(
      id INTEGER PRIMARY KEY ,
      titre   TEXT NOT NULL
      auteur  TEXT NOT NULL  ,
      annnee  TEXT 
      
       );
      ''');
  }

  Future<int> add(Livre article) async {
    Database db = await instance.database;
    return await db.insert('Article', article.toMap());
  }
Future<List> readData() async{
List response = await db.getLivres();
ListdesLivres.addAll(respon);
setState(() {});

}
    

@override 
void initState(){readDate();
super initState()}





}