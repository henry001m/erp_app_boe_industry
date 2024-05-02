import 'package:erp_app_boe_industry/my_app.dart';
import 'package:erp_app_boe_industry/services/api/BackendApi.dart';
import 'package:erp_app_boe_industry/services/local_storage.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.configurePrefs();
  await BackendApi.configureDio();
  runApp(const MyApp());
}