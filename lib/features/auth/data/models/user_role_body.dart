import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_role_body.g.dart';
@JsonSerializable()
class UserRoleBody {
  UserRoleBody(this.userRole);

  // ignore: lines_longer_than_80_chars
  factory UserRoleBody.fromJson(Map<String, dynamic> json) => _$UserRoleBodyFromJson(json);
  @JsonKey(name: 'role')
  String userRole;
}
