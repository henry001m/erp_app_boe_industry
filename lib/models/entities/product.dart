import 'dart:convert';

import 'package:erp_app_boe_industry/models/entities/category.dart';

class Producto {
  Producto(
      {this.pdtId,
      this.pdtCodigo,
      this.pdtProducto,
      this.pdtProductoApp,
      this.pdtCaracteristcasApp,
      this.pdtMedida,
      this.pdtPrecioCampo1,
      this.pdtPrecioCampo2,
      this.pdtPrecioCampo3,
      this.pdtPrecioCampo4,
      this.pdtPrecioCampo5,
      this.pdtPrecioCampo6,
      this.pdtPrecioCampo7,
      this.pdtPrecioCampo8,
      this.pdtPrecioCampo9,
      this.pdtPrecioCampo10,
      this.pdtPrecioCampo11,
      this.pdtPrecioCampo12,
      this.pdtPrecioCampo13,
      this.pdtPrecioCampo14,
      this.pdtPrecioCampo15,
      this.pdtPuntoWallet,
      this.pdtCtgId,
      this.pdtSctgId,
      this.pdtSsctgId,
      this.pdtMrcId,
      this.pdtUmId,
      this.img});

  int? pdtId;
  String? pdtCodigo;
  String? pdtProducto;
  String? pdtProductoApp;
  String? pdtCaracteristcasApp;
  double? pdtMedida;
  double? pdtPrecioCampo1;
  double? pdtPrecioCampo2;
  double? pdtPrecioCampo3;
  double? pdtPrecioCampo4;
  double? pdtPrecioCampo5;
  double? pdtPrecioCampo6;
  double? pdtPrecioCampo7;
  double? pdtPrecioCampo8;
  double? pdtPrecioCampo9;
  double? pdtPrecioCampo10;
  double? pdtPrecioCampo11;
  double? pdtPrecioCampo12;
  double? pdtPrecioCampo13;
  double? pdtPrecioCampo14;
  double? pdtPrecioCampo15;
  double? pdtPuntoWallet;
  int? pdtCtgId;
  int? pdtSctgId;
  int? pdtSsctgId;
  int? pdtMrcId;
  int? pdtUmId;
  String? img;

  Categoria? categoria;

  factory Producto.fromJson(String str) => Producto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Producto.fromMap(Map<String, dynamic> json) => Producto(
        pdtId: json['pdt_id'],
        pdtCodigo: json['pdt_codigo'],
        pdtProducto: json['pdt_producto'],
        pdtProductoApp: json['pdt_producto_app'],
        pdtCaracteristcasApp: json['pdt_caracteristicas'],
        pdtMedida: json['pdt_medida'],
        pdtPrecioCampo1: json['pdt_precio_campo_1'],
        pdtPrecioCampo2: json['pdt_precio_campo_2'],
        pdtPrecioCampo3: json['pdt_precio_campo_3'],
        pdtPrecioCampo4: json['pdt_precio_campo_4'],
        pdtPrecioCampo5: json['pdt_precio_campo_5'],
        pdtPrecioCampo6: json['pdt_precio_campo_6'],
        pdtPrecioCampo7: json['pdt_precio_campo_7'],
        pdtPrecioCampo8: json['pdt_precio_campo_8'],
        pdtPrecioCampo9: json['pdt_precio_campo_9'],
        pdtPrecioCampo10: json['pdt_precio_campo_10'],
        pdtPrecioCampo11: json['pdt_precio_campo_11'],
        pdtPrecioCampo12: json['pdt_precio_campo_12'],
        pdtPrecioCampo13: json['pdt_precio_campo_13'],
        pdtPrecioCampo14: json['pdt_precio_campo_14'],
        pdtPrecioCampo15: json['pdt_precio_campo_15'],
        pdtPuntoWallet: json['pdt_punto_wallet'],
        pdtCtgId: json['pdt_ctg_id'],
        pdtSctgId: json['pdt_sctg_id'],
        pdtSsctgId: json['pdt_ssctg_id'],
        pdtMrcId: json['pdt_mrc_id'],
        pdtUmId: json['pdt_um_id'],
      );

  Map<String, dynamic> toMap() => {
        "pdt_codigo": pdtCodigo,
        "pdt_producto": pdtProducto,
        "pdt_producto_app": pdtProductoApp,
        "pdt_caracteristicas_app": pdtCaracteristcasApp,
        "pdt_medida": pdtMedida,
        "pdt_precio_campo_1": pdtPrecioCampo1,
        "pdt_precio_campo_2": pdtPrecioCampo2,
        "pdt_precio_campo_3": pdtPrecioCampo3,
        "pdt_precio_campo_4": pdtPrecioCampo4,
        "pdt_precio_campo_5": pdtPrecioCampo5,
        "pdt_precio_campo_6": pdtPrecioCampo6,
        "pdt_precio_campo_7": pdtPrecioCampo7,
        "pdt_precio_campo_8": pdtPrecioCampo8,
        "pdt_precio_campo_9": pdtPrecioCampo9,
        "pdt_precio_campo_10": pdtPrecioCampo10,
        "pdt_precio_campo_11": pdtPrecioCampo11,
        "pdt_precio_campo_12": pdtPrecioCampo12,
        "pdt_precio_campo_13": pdtPrecioCampo13,
        "pdt_precio_campo_14": pdtPrecioCampo14,
        "pdt_precio_campo_15": pdtPrecioCampo15,
        "pdt_punto_wallet": pdtPuntoWallet,
        "pdt_ctg_id": pdtCtgId,
        "pdt_sctg_id": pdtSctgId,
        "pdt_ssctg_id": pdtSsctgId,
        "pdt_mrc_id": pdtMrcId,
        "pdt_um_id": pdtUmId
      };

  @override
  String toString() {
    return 'Producto: $pdtProducto';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Producto &&
          runtimeType == other.runtimeType &&
          pdtId == other.pdtId; // Compara los productos por su atributo 'id'

  @override
  int get hashCode => pdtId.hashCode; // Devuelve el hashCode del atributo 'id'
}
