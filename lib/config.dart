import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static String baseRoute =
      dotenv.get("API_DOMAIN", fallback: "http://192.168.0.101:8080/api/");
}
