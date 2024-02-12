
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
  final String author;
  final String description;
  final String slug;
  final int questionsCount;
  final String createdAt;

  factory Test.fromJson(Map<String, dynamic> json) {
    return Test(
      id: json['id'],
      title: json['title'],
      author: json['author'],
      description: json['description'],
      slug: json['slug'],
      questionsCount: json['questions_count'],
      createdAt: json['created_at'],
    );
  }
}
