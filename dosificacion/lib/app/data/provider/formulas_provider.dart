import 'dart:math';

class FormulasProvider {
  ///Funcion [caudal] calcula el caudal del modulo en litros por segundo
  ///[altura] es la altura de la canaleta parshall
  static String caudal(String altura) {
    return (pow(double.parse(altura), 1.522) * 690).toStringAsFixed(2);
  }

  /// Funcion [aforoSinTiempo] calcula el aforo  en litros hora del oxidante y desinfectante
  /// [caudal] en litros por segundo
  /// [ppm] en miligramos por litros
  /// [concentracion] en gramos por litro
  static String aforoSinTiempo(
      String caudal, String ppm, String concentracion) {
    double caudalDouble = (double.parse(caudal));
    double ppmDouble = (double.parse(ppm));
    double concentracionDouble = (double.parse(concentracion));
    double aforoSinTiempo =
        (((caudalDouble * ppmDouble) / (concentracionDouble * 1000)) * 3600);
    return aforoSinTiempo.toStringAsFixed(2);
  }

  /// Funcion [aforoConTiempo] calcula el aforo en mililitros por el tiempo en segundos absorbente y ayudante de floculacion
  /// [caudal] en litros por segundo
  /// [ppm] en miligramos por litros
  /// [concentracion] en gramos por litro
  /// [tiempo] tiempo de aforo en segundos
  static String aforoConTiempo(
      String caudal, String ppm, String concentracion, String tiempo) {
    double caudalDouble = (double.parse(caudal));
    double ppmDouble = (double.parse(ppm));
    double concentracionDouble = (double.parse(concentracion));
    double tiempoDouble = (double.parse(tiempo));
    double aforoConTiempo =
        (((caudalDouble * ppmDouble) / (concentracionDouble * 1000)) * 1000) *
            tiempoDouble;
    return aforoConTiempo.toStringAsFixed(2);
  }

  ///Funcion [aforoCuagulante] calcula el aforo del cuagulante en mililitros por el tiempo en segundos
  /// [caudal] en litros por segundo
  /// [ppm] en mililitros por metro cubico
  /// [tiempo] tiempo de aforo en segundos
  static String aforoCuagulante(String caudal, String ppm, String tiempo) {
    double caudalDouble = (double.parse(caudal));
    double ppmDouble = (double.parse(ppm));
    double tiempoDouble = (double.parse(tiempo));
    double aforoCuagulante = ((caudalDouble * ppmDouble) / 1000) * tiempoDouble;
    return aforoCuagulante.toStringAsFixed(2);
  }

  ///Funcion [ppmSinTiempo] calcula las ppm en miligramos litro del oxidante y el desinfectante
  /// [caudal] en litros por segundo
  /// [aforo] en litros litros hora
  /// [concentracion] en gramos por litro
  static String ppmSinTiempo(
      String caudal, String aforo, String concentracion) {
    double caudalDouble = (double.parse(caudal));
    double aforoDouble = (double.parse(aforo));
    double concentracionDouble = (double.parse(concentracion));
    double ppmSinTiempo =
        ((aforoDouble / 3.6) * concentracionDouble) / caudalDouble;
    return ppmSinTiempo.toStringAsFixed(2);
  }

  /// Funcion [ppmConTiempo] calcula las ppm en miligramos por litro del absorbente y el ayudante de floculacion
  /// [caudal] en litros por segundo
  /// [aforo] en mililitros
  /// [concentracion] en gramos por litro
  /// [tiempo] tiempo de aforo en segundos
  static String ppmConTiempo(
      String caudal, String aforo, String concentracion, String tiempo) {
    double caudalDouble = (double.parse(caudal));
    double aforoDouble = (double.parse(aforo));
    double concentracionDouble = (double.parse(concentracion));
    double tiempoDouble = (double.parse(tiempo));
    double ppmConTiempo =
        (((aforoDouble / tiempoDouble) * concentracionDouble) /
                (caudalDouble / 1000)) /
            1000;
    return ppmConTiempo.toStringAsFixed(2);
  }

  ///Funcion [ppmCuagulante] calcula las ppm del cuagulante en mililitros por metro cubico
  /// [caudal] en litros por segundo
  /// [aforo] en mililitros
  /// [tiempo] tiempo de aforo en segundos
  static String ppmCuagulante(String caudal, String aforo, String tiempo) {
    double caudalDouble = (double.parse(caudal));
    double aforoDouble = (double.parse(aforo));
    double tiempoDouble = (double.parse(tiempo));
    double ppmCuagulante = ((aforoDouble / tiempoDouble) * 1000) / caudalDouble;
    return ppmCuagulante.toStringAsFixed(2);
  }

  ///Funcion [ppmTotalesDesinfectante] calcula las ppm totales para reportar
  static String ppmTotalesDesinfectante(
      String caudalModulo1,
      String caudalModulo2,
      String caudalTotal,
      String ppmModulo1,
      String ppmModulo2,
      String ppmTanque) {
    double caudalModulo1Double = (double.parse(caudalModulo1));
    double caudalModulo2Double = (double.parse(caudalModulo2));
    double caudalTotalDouble = (double.parse(caudalTotal));
    double ppmModulo1Double = (double.parse(ppmModulo1));
    double ppmModulo2Double = (double.parse(ppmModulo2));
    double ppmTanqueDouble = (double.parse(ppmTanque));
    double ppmTotalesDesinfectante =
        (((caudalModulo1Double * ppmModulo1Double) +
                    (caudalModulo2Double * ppmModulo2Double)) /
                caudalTotalDouble) +
            ppmTanqueDouble;
    return ppmTotalesDesinfectante.toStringAsFixed(2);
  }
}
