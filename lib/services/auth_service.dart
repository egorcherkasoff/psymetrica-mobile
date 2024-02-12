import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:psymetrica/models/tokens.dart';

/// сервис взаимодействующий с аутентификацией
class AuthService {
  final Dio _dio = Dio();
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  final String _baseRoute = "http://192.168.0.101:8080/api/";

  ///запрос к бэкенду для регистрации
  Future<void> register(
      String email, String password, String rePassword) async {
    try {
      await _dio.post(
        "${_baseRoute}auth/users/",
        data: {
          "email": email,
          "password": password,
          "re_password": rePassword,
        },
      );
      login(email, password);
    } catch (e) {
      throw e.toString();
    }
  }

  ///запрос к бэкенду для входа, возвращает токены access, refresh
  Future<Response> login(String email, String password) async {
    try {
      final Response response =
          await _dio.post("${_baseRoute}auth/jwt/create/", data: {
        "email": email,
        "password": password,
      });
      log(response.data.toString());
      AuthToken token = AuthToken.fromJson(response.data);
      log(token.accessToken);
      log(token.refreshToken);
      _storage.write(key: "access_token", value: token.accessToken);
      _storage.write(key: "refresh_token", value: token.refreshToken);
      return response;
    } catch (e) {
      throw (e.toString());
    }
  }

  ///запрос к бэкенду обновления access токена
  Future<Response> refresh() async {
    final token = await _storage.read(key: "refresh_token");
    try {
      final Response response =
          await _dio.post("${_baseRoute}auth/jwt/refresh/", data: {
        "token": token,
      });
      return response;
    } catch (e) {
      throw (e.toString());
    }
  }

  ///запрос к бэкенду верификации access токена, если неудачно, то обновляем токен
  Future<bool> verify() async {
    try {
      final token = await _storage.read(key: "access_token");
      await _dio.post("${_baseRoute}auth/jwt/verify/", data: {
        "token": token,
      });
      return true;
    } catch (e) {
      return false;
    }
  }
}
