import 'package:dosificacion/app/core/utils/barrel_files/models.dart';
import 'package:dosificacion/app/data/provider/db_provider.dart';

class DosificacionRepository {
  static DatosDosificacionModel _datos = DatosDosificacionModel();

  static newData(String alturaModulo1, String alturaModulo2) async {
    final newData = DatosDosificacionModel(
        alturaModulo1: alturaModulo1, alturaModulo2: alturaModulo2);
    final id = await DbProvider.db.insert(newData);
    newData.id = id;
    _datos.alturaModulo1 = newData.alturaModulo1;
    _datos.alturaModulo2 = newData.alturaModulo2;
    _datos.id = newData.id;
  }

  static updateData(String alturaModulo1, String alturaModulo2) async {
    final newData = DatosDosificacionModel(
        alturaModulo1: alturaModulo1, alturaModulo2: alturaModulo2);
    final id = await DbProvider.db.update(newData);
    newData.id = id;
    _datos.alturaModulo1 = newData.alturaModulo1;
    _datos.alturaModulo2 = newData.alturaModulo2;
    _datos.id = newData.id;
  }

  static listarData() async {
    final res = await DbProvider.db.listar();
    print(res?.alturaModulo1);
  }
}
