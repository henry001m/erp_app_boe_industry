import 'dart:convert';

import 'package:erp_app_boe_industry/models/entities/product.dart';


class ProductsResponse {
  ProductsResponse({
    //required this.total,
    required this.productos,
  });

  //int total;
  List<Producto> productos;

  factory ProductsResponse.fromJson(String str) =>
      ProductsResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductsResponse.fromMap(List json) =>
      ProductsResponse(
        //total: json["total"],
        productos: List<Producto>.from(
            json.map((x) => Producto.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        //"total": total,
        "productos": List<dynamic>.from(productos.map((x) => x.toMap())),
      };
}
