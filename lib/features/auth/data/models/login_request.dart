import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest {
  LoginRequest({required this.email, required this.password});
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
