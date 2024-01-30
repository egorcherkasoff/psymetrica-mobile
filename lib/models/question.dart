import 'package:psymetrica/models/test.dart';

class Question {
  const Question({
    required this.id,
    required this.test,
    required this.type,
    required this.text,
    this.image,
    required this.isRequired,
    required this.createdAt,
  });

  final String id;
  final Test test;
  final Type type;
  final String text;
  final String? image;
  final bool isRequired;
  // options...
  final String createdAt;
}
