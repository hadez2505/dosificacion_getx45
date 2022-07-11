import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbProvider {
  static Database? _dataBase;
  static final DbProvider db = DbProvider._();

  DbProvider._();

  Future<Database> get dataBase async {
    if (_dataBase != null) return _dataBase!;

    _dataBase = await _initDB('dosificacion.db');

    return _dataBase!;
  }

  Future<Database> _initDB(String dbName) async {
    //path de donde almacenaremos la base de datos
    final documentsDirectory = await getDatabasesPath();
    final path = join(documentsDirectory, dbName);
    print(path);

    //Crear base de datos
    return openDatabase(path, version: 1, onCreate: _onCreateDb);
  }

  Future _onCreateDb(Database db, int version) async {
    await db.execute('''
      CREATE TABLE dosificacion(
        caudalModulo1 TEXT,
        caudalModulo2 TEXT  
      );
      
    ''');
  }
}
