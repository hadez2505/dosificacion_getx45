import 'package:dosificacion/app/core/utils/barrel_files/models.dart';
import 'package:dosificacion/app/data/provider/db_provider.dart';

class DosificacionRepository {
  DatosDosificacionModel datos = DatosDosificacionModel();

  newData(String caudalModulo1, String caudalModulo2) async {
    final newData = DatosDosificacionModel(
        caudalModulo1: caudalModulo1, caudalModulo2: caudalModulo2);
    final id = await DbProvider.db.insert(newData);
    newData.id = id;
    datos.caudalModulo1 = newData.caudalModulo1;
    datos.caudalModulo2 = newData.caudalModulo2;
    datos.id = newData.id;
  }

  updateData(String caudalModulo1, String caudalModulo2) async {
    final newData = DatosDosificacionModel(
        caudalModulo1: caudalModulo1, caudalModulo2: caudalModulo2);
    final id = await DbProvider.db.update(newData);
    newData.id = id;
    datos.caudalModulo1 = newData.caudalModulo1;
    datos.caudalModulo2 = newData.caudalModulo2;
    datos.id = newData.id;
  }

  listarData() async {
    final res = await DbProvider.db.listar();
    print(res);
  }
}
