import 'dart:convert';

class Ciudad {
  Ciudad({
    this.cidId,
    required this.cidNombre,
    this.cidEstado,
  });

  int? cidId;
  String cidNombre;
  bool? cidEstado;


  factory Ciudad.fromJson(String str) => Ciudad.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Ciudad.fromMap(Map<String, dynamic> json) => Ciudad(
        cidId: json["cid_id"],
        cidNombre: json["cid_nombre"],
        cidEstado: json["cid_estado"],
      );

  Map<String, dynamic> toMap() => {
        "cid_nombre": cidNombre,
      };

  @override
  String toString() {
    return 'ciudad: $cidNombre';
  }
}
