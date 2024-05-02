import 'dart:convert';

import 'package:erp_app_boe_industry/models/entities/city.dart';

class CitiesResponse {
  CitiesResponse({
    required this.cities,
  });

  List<Ciudad> cities;

  factory CitiesResponse.fromJson(String str) =>
      CitiesResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CitiesResponse.fromMap(List json) => CitiesResponse(
        cities: List<Ciudad>.from(json.map((x) => Ciudad.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "cities": List<dynamic>.from(cities.map((x) => x.toMap())),
      };
}
