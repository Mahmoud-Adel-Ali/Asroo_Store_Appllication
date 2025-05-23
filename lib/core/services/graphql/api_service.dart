import 'package:asroo_store/features/auth/data/models/login_response.dart';
import 'package:asroo_store/features/auth/data/models/user_role_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

const String baseUrl = 'https://api.escuelajs.co';
const String graphql = '/graphql';
const String profile = '/api/v1/auth/profile';

@RestApi(baseUrl: baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(graphql)
  Future<LoginResponseModel> login(
    @Body() Map<String, dynamic> mutation,
  );

  @GET(profile)
  Future<UserRoleBody> getUserRole(
    @Body() Map<String, dynamic> userRole,
  );
}
