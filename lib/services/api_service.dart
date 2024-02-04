import 'package:dio/dio.dart';
import 'package:psymetrica/config.dart';

class ApiService {
  final Dio _dio = Dio();

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
