
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../local_storage.dart';

class BackendApi {
  static final Dio _dio = Dio();

  static Future<void> configureDio() async {
    // String baseUrl = 'http://192.168.30.76:8081/api';
    String baseUrl = 'https://boeindutrybackend-agruelsecq-uc.a.run.app/api';
    _dio.options.baseUrl = baseUrl;

    // Configure Headers
    if (LocalStorage.prefs.getString('token') != null) {
      _dio.options.headers = {
        'Authorization':
            "Bearer ${LocalStorage.prefs.getString('token') ?? ''}",
      };
    }
  }

  static Future httpGet(String path) async {
    try {
      final resp = await _dio.get(path);
      return resp.data;
    } on DioError catch (DioError) {
      throw (DioError.response?.data['msg'] ?? 'Error en el GET');
    }
  }

  static Future post(String path, Map<String, dynamic> data) async {
    try {
      final resp = await _dio.post(path, data: data);
      print('=================== respuesta del post $resp');
      return resp.data;
    } catch (e) {
      throw ('Error en el POST $e');
    }
  }

  static Future postAux(String path, FormData data) async {
    try {
      final resp = await _dio.post(path, data: data);
      return resp.data;
    } catch (e) {
      throw ('Error en el POSTAUX $e');
    }
  }

  static Future put(String path, Map<String, dynamic> data) async {
    final formData = FormData.fromMap(data);

    try {
      final resp = await _dio.put(path, data: formData);
      return resp.data;
    } on DioError catch (e) {
      throw ('Error en el PUT $e');
    }
  }

  static Future putAux(String path, Map<String, dynamic> data) async {
    try {
      final resp = await _dio.put(path, data: data);
      return resp.data;
    } catch (e) {
      throw ('Error en el PUTAUX');
    }
  }

  static Future delete(String path, Map<String, dynamic> data) async {
    final formData = FormData.fromMap(data);

    try {
      final resp = await _dio.delete(path, data: formData);
      return resp.data;
    } on DioError {
      throw ('Error en el DELETE');
    }
  }

  static Future uploadFile(String path, Uint8List bytes) async {
    final formData =
        FormData.fromMap({'archivo': MultipartFile.fromBytes(bytes)});

    try {
      final resp = await _dio.put(path, data: formData);
      return resp.data;
    } on DioError catch (e) {
      throw ('Error en el PUT $e');
    }
  }

  static Future<dynamic> search(
      String path, Map<String, String> queryParameters) async {
    try {
      final resp = await _dio.get(path, queryParameters: queryParameters);
      return resp.data;
    } on DioError catch (e) {
      throw (e.response?.data['msg'] ?? 'Error en el SEARCH');
    }
  }
}
