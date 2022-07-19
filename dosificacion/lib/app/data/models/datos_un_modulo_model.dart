class DatosUnModuloModel {
  final String concetracion, ppm, aforo;
  final int id;

  DatosUnModuloModel( 
      { 
        required this.id,
        required this.concetracion, 
        required this.ppm, 
        required this.aforo
      }
  );

  factory DatosUnModuloModel.fromJson(Map<String,dynamic> json) =>  DatosUnModuloModel(
    id: json["id"],
    concetracion: json["concetracion"],
    ppm: json["ppm"],
    aforo: json["aforo"]
  );

  Map<String, dynamic> toMap() {
    return {
      'id'          : id,
      'concetracion': concetracion,
      'ppm'         : ppm,
      'aforo'       : aforo
    };
  }
}
