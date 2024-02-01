import 'package:dio/dio.dart';
import 'package:psymetrica/config.dart';

// сервис аутентификации
class AuthService {
  final Dio _dio = Dio();
  //регистарция
  Future<Response> register(
      String email, String password, String rePassword) async {
    try {
      final Response response = await _dio.post(
        "${Config.baseRoute}auth/users/",
        data: {
          "email": email,
          "password": password,
          "re_password": rePassword,
        },
      );
      return response;
    } catch (e) {
      throw e.toString();
    }
  }

  // login
  Future<Response> login(String email, String password) async {
    try {
      final Response response =
          await _dio.post("${Config.baseRoute}auth/jwt/create/", data: {
        "email": email,
        "password": password,
      });
      return response;
    } catch (e) {
      throw (e.toString());
    }
  }

  // обновление acces token
  Future<Response> refresh(String refreshToken) async {
    try {
      final Response response = await _dio.post(
        "${Config.baseRoute}auth/jwt/refresh/",
      );
      return response;
    } catch (e) {
      throw (e.toString());
    }
  }
}
