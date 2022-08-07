// To parse this JSON data, do
//
//     final datosDosificacionModel = datosDosificacionModelFromJson(jsonString);

import 'dart:convert';

DatosDosificacionModel datosDosificacionModelFromJson(String str) =>
    DatosDosificacionModel.fromMap(json.decode(str));

String datosDosificacionModelToJson(DatosDosificacionModel data) =>
    json.encode(data.toMap());

class DatosDosificacionModel {
  DatosDosificacionModel({
    this.id,
    this.alturaModulo1,
    this.alturaModulo2,
  });

  int? id;
  String? alturaModulo1;
  String? alturaModulo2;

  factory DatosDosificacionModel.fromMap(Map<String, dynamic> json) =>
      DatosDosificacionModel(
        id: json["id"],
        alturaModulo1: json["alturaModulo1"],
        alturaModulo2: json["alturaModulo2"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "alturaModulo1": alturaModulo1,
        "alturaModulo2": alturaModulo2,
      };
}
