// To parse this JSON data, do
//
//     final datosDosificacionModel = datosDosificacionModelFromJson(jsonString);

import 'dart:convert';

DatosDosificacionModel datosDosificacionModelFromJson(String str) => DatosDosificacionModel.fromMap(json.decode(str));

String datosDosificacionModelToJson(DatosDosificacionModel data) => json.encode(data.toMap());

class DatosDosificacionModel {
    DatosDosificacionModel({
        this.id,
        this.caudalModulo1,
        this.caudalModulo2,
    });

    int? id;
    String? caudalModulo1;
    String? caudalModulo2;

    factory DatosDosificacionModel.fromMap(Map<String, dynamic> json) => DatosDosificacionModel(
        id: json["id"],
        caudalModulo1: json["caudalModulo1"],
        caudalModulo2: json["caudalModulo2"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "caudalModulo1": caudalModulo1,
        "caudalModulo2": caudalModulo2,
    };
}

