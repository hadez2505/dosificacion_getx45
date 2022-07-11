class DatosDosModulosModel {
  final String concentracion,
      ppmModulo1,
      ppmModulo2,
      aforoModulo1,
      aforoModulo2;

  DatosDosModulosModel(
      {required this.concentracion,
      required this.ppmModulo1,
      required this.ppmModulo2,
      required this.aforoModulo1,
      required this.aforoModulo2});

  Map<String, dynamic> toMap() {
    return {
      'concentracion': concentracion,
      'ppmModulo1': ppmModulo1,
      'ppmModulo2': ppmModulo2,
      'aforoModulo1': aforoModulo1,
      'aforoModulo2': aforoModulo2,
    };
  }
}
