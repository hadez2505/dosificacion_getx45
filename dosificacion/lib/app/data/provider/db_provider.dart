import 'package:dosificacion/app/core/utils/barrel_files/models.dart';
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

  Future<int> insert(DatosDosificacionModel dosificacionModel) async {
    final Database db = await dataBase;
    final res = await db.insert('dosificacion', dosificacionModel.toMap());
    return res;
  }

  Future<int> update(DatosDosificacionModel dosificacionModel) async {
    final Database db = await dataBase;
    final res = await db.update('dosificacion', dosificacionModel.toMap());
    return res;
  }

  Future<DatosDosificacionModel?> listar() async {
    Database db = await dataBase;
    final List< Map<String, dynamic>> res = await db.query('dosificacion');
    return res.isNotEmpty
            ? DatosDosificacionModel.fromMap(res.last)
            :null;
  }

  Future _onCreateDb(Database db, int version) async {
    await db.execute('''
      CREATE TABLE dosificacion(
        id INTEGER PRIMARY KEY,
        caudalModulo1 TEXT,
        caudalModulo2 TEXT  
      );
      
    ''');
  }
}
