class DatosDosificacionModel {
  final String caudalModulo1, caudalModulo2;

  DatosDosificacionModel({required this.caudalModulo1, required this.caudalModulo2});

  Map<String, dynamic> toMap() {
    return {
      'caudalModulo1': caudalModulo1,
      'caudalModulo2': caudalModulo2
    };
  }
}
