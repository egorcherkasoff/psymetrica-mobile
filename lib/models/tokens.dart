class AuthToken {
  AuthToken({required this.accessToken, required this.refreshToken});

  String accessToken;
  String refreshToken;

  factory AuthToken.fromJson(Map<String, dynamic> json) {
    return AuthToken(
      accessToken: json['access'],
      refreshToken: json['refresh'],
    );
  }
}
