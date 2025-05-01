import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_role_body.g.dart';

@JsonSerializable()
class UserRoleBody {
  UserRoleBody(this.userRole);

  factory UserRoleBody.fromJson(Map<String, dynamic> json) =>
      _$UserRoleBodyFromJson(json);
  @JsonKey(name: 'role')
  String userRole;
}
