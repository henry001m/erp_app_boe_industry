import 'dart:convert';

class Usuario {
  Usuario(
      {required this.usrCodigo,
      required this.usrAreaId,
      this.usrContrasena,
      required this.usrCorreo,
      required this.usrCtctId,
      required this.usrEditar,
      required this.usrEliminar,
      required this.usrEstadisticaVenta,
      required this.usrId,
      required this.usrNoStockIngreso,
      required this.usrNombreCompleto,
      required this.usrNvId,
      required this.usrCostoPonderado,
      required this.usrUsuario,
      required this.usrVerCliente,
      required this.usrVerCotizacion,
      required this.usrVerReporteReposicion,
      this.img});
  int? usrId;
  String? usrCodigo;
  String usrNombreCompleto;
  String? usrUsuario;
  String? usrContrasena;
  String? usrCorreo;
  bool? usrVerCliente;
  bool? usrVerCotizacion;
  bool? usrEditar;
  bool? usrEliminar;
  bool? usrNoStockIngreso;
  bool? usrVerReporteReposicion;
  bool? usrEstadisticaVenta;
  bool? usrCostoPonderado;
  int? usrNvId;
  int? usrCtctId;
  int? usrAreaId;
  String? img;

  factory Usuario.fromJson(String str) => Usuario.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Usuario.fromMap(Map<String, dynamic> json) => Usuario(
      usrId: json["usr_id"],
      usrCodigo: json["usr_codigo"],
      usrNombreCompleto: json["usr_nombre_completo"],
      usrUsuario: json["usr_usuario"],
      usrCorreo: json["usr_correo"],
      usrNoStockIngreso: json["usr_no_stock_ingreso"],
      usrVerCotizacion: json["usr_ver_cotizacion"],
      usrVerCliente: json["usr_ver_cliente"],
      usrEditar: json["usr_editar"],
      usrEliminar: json["usr_eliminar"],
      usrCostoPonderado: json["usr_costo_ponderado"],
      usrEstadisticaVenta: json["usr_estadistica_venta"],
      usrVerReporteReposicion: json["usr_ver_reporte_reposicion"],
      usrNvId: json["usr_nv_id"],
      usrCtctId: json["usr_ctct_id"],
      usrAreaId: json["usr_area_id"]);

  Map<String, dynamic> toMap() => {
        "usr_codigo": usrCodigo,
        "usr_nombre_completo": usrNombreCompleto,
        "usr_usuario": usrUsuario,
        "usr_contrasena": usrContrasena,
        "usr_correo": usrCorreo,
        "usr_no_stock_ingreso": usrNoStockIngreso,
        "usr_ver_cotizacion": usrVerCotizacion,
        "usr_ver_cliente": usrVerCliente,
        "usr_editar": usrEditar,
        "usr_eliminar": usrEliminar,
        "usr_costo_ponderado": usrCostoPonderado,
        "usr_estadistica_venta": usrEstadisticaVenta,
        "usr_ver_reporte_reposicion": usrVerReporteReposicion,
        "usr_nv_id": usrNvId,
        "usr_ctct_id": usrCtctId,
        "usr_area_id": usrAreaId
      };
}
