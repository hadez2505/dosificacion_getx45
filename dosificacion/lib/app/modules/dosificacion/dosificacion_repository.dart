import 'package:dosificacion/app/core/utils/barrel%20files/models.dart';
import 'package:dosificacion/app/data/provider/db_provider.dart';

class DosificacionRepository {
  DatosDosificacionModel datos = DatosDosificacionModel();

  nuevoDato(String caudalModulo1, String caudalModulo2) async {
    final nuevoDato = DatosDosificacionModel(
        caudalModulo1: caudalModulo1, caudalModulo2: caudalModulo2);
    final id = await DbProvider.db.insert(nuevoDato);
    nuevoDato.id = id;
    datos.caudalModulo1 = nuevoDato.caudalModulo1;
    datos.caudalModulo2 = nuevoDato.caudalModulo2;
    datos.id = nuevoDato.id;
  }

  updateDatos(String caudalModulo1, String caudalModulo2) async {
    final nuevoDato = DatosDosificacionModel(
        caudalModulo1: caudalModulo1, caudalModulo2: caudalModulo2);
    final id = await DbProvider.db.update(nuevoDato);
    nuevoDato.id = id;
    datos.caudalModulo1 = nuevoDato.caudalModulo1;
    datos.caudalModulo2 = nuevoDato.caudalModulo2;
    datos.id = nuevoDato.id;
  }

  listarDatos() async {
    final res = await DbProvider.db.listar();
    print(res);
  }
}
