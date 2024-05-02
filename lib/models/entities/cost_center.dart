import 'dart:convert';

class CentroCosto {
  CentroCosto(
      {this.ctctId,
      this.ctctCodigo,
      this.ctctDireccion,
      this.ctctDetalle,
      this.ctctTelefono,
      this.ctctCelular,
      this.ctctCorreo,
      this.ctctEstado,
      this.ctctUrl,
      this.ctctNombreImagen,
      this.ctctFecha,
      this.ctctCidId,
      this.ctctTpId});
  int? ctctId;
  String? ctctCodigo;
  String? ctctDireccion;
  String? ctctDetalle;
  String? ctctTelefono;
  String? ctctCelular;
  String? ctctCorreo;
  bool? ctctEstado;
  String? ctctUrl;
  String? ctctNombreImagen;
  String? ctctFecha;
  int? ctctCidId;
  int? ctctTpId;

  factory CentroCosto.fromJson(String str) => CentroCosto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CentroCosto.fromMap(Map<String, dynamic> json) => CentroCosto(
      ctctId: json["ctct_id"],
      ctctCodigo: json["ctct_codigo"],
      ctctDireccion: json["ctct_direccion"],
      ctctDetalle: json["ctct_detalle"],
      ctctTelefono: json["ctct_telefono"],
      ctctCelular: json["ctct_celular"],
      ctctCorreo: json["ctct_correo"],
      ctctEstado: json["ctct_estado"],
      ctctUrl: json["ctct_url"],
      ctctNombreImagen: json["ctct_nombre_imagen"],
      ctctFecha: json["ctct_fecha"],
      ctctCidId: json["ctct_cid_id"],
      ctctTpId: json["ctct_tp_id"],
  );


  Map<String, dynamic> toMap() => {
    "ctct_direccion": ctctDireccion,
    "ctct_detalle": ctctDetalle,
    "ctct_telefono": ctctTelefono,
    "ctct_celular": ctctCelular,
    "ctct_correo": ctctCorreo,
    "ctct_cid_id": ctctCidId,
    "ctct_tp_id": ctctTpId
  }; 
}
