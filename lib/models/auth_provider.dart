import 'dart:convert';

import 'package:erp_app_boe_industry/services/api/BackendApi.dart';
import 'package:erp_app_boe_industry/services/local_storage.dart';
import 'package:erp_app_boe_industry/services/notification_service.dart';
import 'package:flutter/material.dart';

import 'entities/http/auth_response.dart';
import 'entities/user.dart';

enum AuthStatus { checking, authenticated, notauthenticated }

class AuthProvider extends ChangeNotifier {
  AuthStatus authStatus = AuthStatus.checking;
  List<Usuario> usuarios = [];

  Usuario? user;

  AuthProvider() {
    isAuthenticated();
  }

  login(String usrUsuario, String usrContrasena) {
    // ignore: todo
    final data = {"usr_usuario": usrUsuario, "usr_contrasena": usrContrasena};
    BackendApi.post('/autenticacion/inicioSesion', data).then((json) {
      final authResponse = AuthResponse.fromMap(json);

      //user = authResponse.usuario;

      authStatus = AuthStatus.authenticated;
      LocalStorage.prefs.setString('token', authResponse.token);


      BackendApi.configureDio().then((value) {

        BackendApi.httpGet('/autenticacion/obtenerUsuario').then((val) {
          user = Usuario.fromJson(jsonEncode(val));
        });
      });

      notifyListeners();
    }).catchError((e) {
      NotificationsService.showSnackbarError('Usuario/Contraseña no válidos');
    });
  }

  Future<bool> isAuthenticated() async {
    if (LocalStorage.prefs.getString('token') == null) {
      authStatus = AuthStatus.notauthenticated;
      notifyListeners();
      return false;
    } else {
      authStatus = AuthStatus.authenticated;
      notifyListeners();
      return true;
    }

    /*try {
      final resp = await BackendApi.httpGet('/autenticacion/refrescarToken');
      final authResponse = AuthResponse.fromMap(resp);
      LocalStorage.prefs.setString('token', authResponse.token);
      //user = authResponse.usuario;
      authStatus = AuthStatus.authenticated;
      notifyListeners();
      return true;
    } catch (e) {
      authStatus = AuthStatus.notauthenticated;
      notifyListeners();
      return false;
    }*/
  }

  logout() {
    LocalStorage.prefs.remove('token');
    authStatus = AuthStatus.notauthenticated;
    NotificationsService.messengerKey = GlobalKey<ScaffoldMessengerState>();

    notifyListeners();
  }

  void refreshUser(Usuario newUser) {
    usuarios = usuarios.map((user) {
      if (user.usrId == newUser.usrId) {
        user = newUser;
      }
      return user;
    }).toList();

    notifyListeners();
  }
}
