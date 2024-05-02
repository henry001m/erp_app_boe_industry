import 'dart:convert';

import 'package:erp_app_boe_industry/models/entities/TypeCostCenter.dart';

class TypesCostCenterResponse {
  TypesCostCenterResponse({
    required this.typesCostCenters,
  });

  List<TipoCentroCosto> typesCostCenters;

  factory TypesCostCenterResponse.fromJson(String str) =>
      TypesCostCenterResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TypesCostCenterResponse.fromMap(List json) => TypesCostCenterResponse(
        typesCostCenters: List<TipoCentroCosto>.from(json.map((x) => TipoCentroCosto.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "typesCostCenters": List<dynamic>.from(typesCostCenters.map((x) => x.toMap())),
      };
}