class DatosUnModuloModel {
  final String concetracion, ppm, aforo;

  DatosUnModuloModel({
    required this.concetracion, 
    required this.ppm, 
    required this.aforo});


  Map<String,dynamic> toMap(){
    return{
    'concetracion':concetracion,
    'ppm':ppm,
    'aforo':aforo,};
  }
}
