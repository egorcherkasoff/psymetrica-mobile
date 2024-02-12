import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:psymetrica/models/test.dart';
import 'package:psymetrica/services/auth_service.dart';

/// сервис взаимодействующий с прочими эндпоинтами API
class ApiService {
  final String _baseRoute = "http://192.168.0.101:8080/api/";
  final Dio _dio = Dio();
  final AuthService _authService = AuthService();

  ///получение списка тестов
  Future<List<Test>> getTests([String? category]) async {
    try {
      final Response response = await _dio.get(
        "${_baseRoute}tests/",
      );
      List<Test> tests = [];
      for (var test in response.data) {
        tests.add(Test.fromJson(test));
      }
      log(tests.toString());
      return tests;
    } catch (e) {
      throw e.toString();
    }
  }
}
