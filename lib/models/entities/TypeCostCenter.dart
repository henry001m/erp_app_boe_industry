import 'dart:convert';

class TipoCentroCosto {
  TipoCentroCosto({
    this.tpId,
    required this.tpNombre,
    this.tpEstado,
  });

  int? tpId;
  String tpNombre;
  bool? tpEstado;


  factory TipoCentroCosto.fromJson(String str) => TipoCentroCosto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TipoCentroCosto.fromMap(Map<String, dynamic> json) => TipoCentroCosto(
        tpId: json["tp_id"],
        tpNombre: json["tp_nombre"],
        tpEstado: json["tp_estado"],
      );

  Map<String, dynamic> toMap() => {
        "tp_nombre": tpNombre,
      };

  @override
  String toString() {
    return 'TipoCentroCosto: $tpNombre';
  }
}