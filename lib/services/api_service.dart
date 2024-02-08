import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:psymetrica/config.dart';
import 'package:psymetrica/services/auth_service.dart';

class ApiService {
  final GetIt _getIt = GetIt.I;
  final Dio _dio = Dio();
  final AuthService _authService = AuthService();

  ///получение списка тестов
  Future<Response> getTests(String? category) async {
    try {
      final Response response = await _dio.get(
        "${Config.baseRoute}tests/",
      );
      return response;
    } catch (e) {
      throw e.toString();
    }
  }
}
