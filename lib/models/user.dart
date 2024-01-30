class User {
  const User({
    required this.id,
    required this.fullName,
    this.avatar,
  });

  final String id;
  final String fullName;
  final String? avatar;
}
