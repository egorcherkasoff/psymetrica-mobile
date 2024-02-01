import 'package:psymetrica/models/user.dart';

class Test {
  const Test({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.slug,
    required this.questionsCount,
    required this.createdAt,
  });

  final String id;
  final String title;
  final User author;
  final String description;
  // category model
  final String slug;
  final int questionsCount;
  final String createdAt;
}
