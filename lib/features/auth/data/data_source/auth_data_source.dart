import 'package:asroo_store/core/services/graphql/api_service.dart';
import 'package:asroo_store/core/services/graphql/graphql_queries/auth/auth_queries.dart';
import 'package:asroo_store/features/auth/data/models/login_request.dart';
import 'package:asroo_store/features/auth/data/models/login_response.dart';

class AuthDataSource {
  const AuthDataSource(this._graphql);
  final ApiService _graphql;

  // Login
  Future<LoginResponseModel> login(LoginRequest body) {
    final response = _graphql.login(AuthQueries().loginQuery(body: body));
    return response;
  }
  // User Role
  // Future<UserRoleBody> getUserRole() {
  //   final response = _graphql.getUserRole(AuthQueries().userRoleQuery());
  //   return response;
  // }
}
