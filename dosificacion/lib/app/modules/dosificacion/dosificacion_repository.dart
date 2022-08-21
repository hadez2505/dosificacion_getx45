import 'package:dosificacion/app/core/utils/barrel_files/models.dart';
import 'package:dosificacion/app/core/utils/barrel_files/providers.dart';

class DosificacionRepository {
  static DatosDosificacionModel _datos = DatosDosificacionModel();

  DatosDosificacionModel get datos => _datos;

  newData(DatosDosificacionModel datos) async {
    final id = await DbProvider.db.insert(datos);
    datos.id = id;
    _datos.id = datos.id;
  }

  updateData(DatosDosificacionModel datos) async {
    final id = await DbProvider.db.update(datos);
    datos.id = id;
    _datos.id = datos.id;
  }

  data() async {
    final res = await DbProvider.db.listar();
    if (res != null) {
      print('inicio de preceso');
      _datos.alturaModulo1 = res.alturaModulo1;
      _datos.alturaModulo2 = res.alturaModulo2;
      _datos.id = res.id;
      print('fin del proceso');
    }
  }
}
