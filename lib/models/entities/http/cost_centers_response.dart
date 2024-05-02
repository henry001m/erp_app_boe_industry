import 'dart:convert';

import 'package:erp_app_boe_industry/models/entities/cost_center.dart';

class CostCentersResponse {
  CostCentersResponse({
    required this.costCenters,
  });

  List<CentroCosto> costCenters;

  factory CostCentersResponse.fromJson(String str) =>
      CostCentersResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CostCentersResponse.fromMap(List json) => CostCentersResponse(
        costCenters:
            List<CentroCosto>.from(json.map((x) => CentroCosto.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "costCenters": List<dynamic>.from(costCenters.map((x) => x.toMap())),
      };
}
