import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbProvider {
  static  Database? _dataBase;
  static final DbProvider db = DbProvider._();

  DbProvider._();

  Future<Database> get dataBase async {
    if (_dataBase != null) return _dataBase!;

    _dataBase = await initDB();

    return _dataBase!;
  }

  initDB() async {
    //path de donde almacenaremos la base de datos
    Directory documentsDirectory = await getApplicationSupportDirectory();
    var isThere = await documentsDirectory.exists();
  print(isThere ? 'exists' : 'non-existent');
    final path = join(documentsDirectory.path, 'Dosificacion.db');
    print(path);

    //Crear base de datos
    return openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute('''
          CREATE TABLE dosificacion(
            caudalModulo1 INTEGER,
            caudalModulo2 INTEGER
          )
        ''');
    });
  }
}
