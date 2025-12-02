class RegisterWaliToken {
  final String key;
  final String token;

  RegisterWaliToken({required this.key, required this.token});

  Map<String, dynamic> toJson() => {
        'key': key,
        'token': token,
      };
}