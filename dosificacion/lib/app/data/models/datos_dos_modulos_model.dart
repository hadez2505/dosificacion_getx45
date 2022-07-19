class DatosDosModulosModel {
  final String  concentracion,
                ppmModulo1,
                ppmModulo2,
                aforoModulo1,
                aforoModulo2;
  final int id;

  DatosDosModulosModel(
    {
      required this.id,
      required this.concentracion,
      required this.ppmModulo1,
      required this.ppmModulo2,
      required this.aforoModulo1,
      required this.aforoModulo2
    }
  );

  factory DatosDosModulosModel.fromJson(Map<String,dynamic> json) => DatosDosModulosModel(
    id: json["id"],
    concentracion: json["concentracion"],
    ppmModulo1: json["ppmModulo1"],
    ppmModulo2: json["ppmModulo2"],
    aforoModulo1: json["aforoModulo1"],
    aforoModulo2: json["aforoModulo2"]
  );

  Map<String, dynamic> toMap() {
    return {
      'id'           : id,
      'concentracion': concentracion,
      'ppmModulo1'   : ppmModulo1,
      'ppmModulo2'   : ppmModulo2,
      'aforoModulo1' : aforoModulo1,
      'aforoModulo2' : aforoModulo2,
    };
  }
}
