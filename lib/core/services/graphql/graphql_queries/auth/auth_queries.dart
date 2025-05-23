import 'package:asroo_store/features/auth/data/models/login_request.dart';

class AuthQueries {
  factory AuthQueries() => instance;
  const AuthQueries._();
  static const AuthQueries instance = AuthQueries._();

  // Login Map Query
  Map<String, dynamic> loginQuery({
    required LoginRequest body,
  }) {
    return {
      'query': r'''
      mutation Login($email: String!, $password: String!) {) {
        login(email: $email, password: $password) {
          accessToken
          refreshToken
        }
      }
    ''',
      'variables': {'email': body.email, 'password': body.password},
    };
  }
}
