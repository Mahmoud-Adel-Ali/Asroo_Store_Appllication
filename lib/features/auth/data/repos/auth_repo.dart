import 'package:asroo_store/core/services/graphql/api_result.dart';
import 'package:asroo_store/core/utils/constants.dart';
import 'package:asroo_store/features/auth/data/data_source/auth_data_source.dart';
import 'package:asroo_store/features/auth/data/models/login_request.dart';
import 'package:asroo_store/features/auth/data/models/login_response.dart';

class AuthRepo {
  AuthRepo(this._dataSource);
  final AuthDataSource _dataSource;

  // Login
  Future<ApiResult<LoginResponseModel>> login(LoginRequest body) async {
    try {
      final response = await _dataSource.login(body);
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errorMessage);
    }
  }
}
