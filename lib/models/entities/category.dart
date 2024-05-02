import 'dart:convert';

class Categoria {
  Categoria({
    this.ctgId,
    required this.ctgNombre,
    this.ctgCodigo,
    this.ctgEstado,
    this.ctgUrl,
    this.ctgNombreImage,
    this.ctgCtgId
  });

  int? ctgId;
  String? ctgCodigo;
  String ctgNombre;
  bool? ctgEstado;
  String? ctgUrl;
  String? ctgNombreImage;
  int? ctgCtgId;


  factory Categoria.fromJson(String str) => Categoria.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Categoria.fromMap(Map<String, dynamic> json) => Categoria(
        ctgId: json["ctg_id"],
        ctgCodigo: json["ctg_codigo"],
        ctgNombre: json["ctg_nombre"],
        ctgEstado: json["ctg_estado"],
        ctgUrl: json["ctg_url"],
        ctgNombreImage: json["ctg_nombre_imagen"],
        ctgCtgId: json["ctg_ctg_id"]
      );

  Map<String, dynamic> toMap() => {
        "ctg_id": ctgId,
        "ctg_codigo" : ctgCodigo,
        "ctg_nombre": ctgNombre,
        "ctg_ctg_id" : ctgCtgId,
      };

  @override
  String toString() {
    return 'Categoria: $ctgNombre';
  }
}
