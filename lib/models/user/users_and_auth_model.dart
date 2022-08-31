import 'package:freezed_annotation/freezed_annotation.dart';
part 'users_and_auth_model.freezed.dart';
part 'users_and_auth_model.g.dart';

@freezed
class UsersAndAuthModel with _$UsersAndAuthModel {

  factory UsersAndAuthModel.registerUser({
    required String firstName,
    required String lastName,
    required String email,
  }) = RegisterUser;

  factory UsersAndAuthModel.loginAuthToken({
    required String token,
  }) = LoginAuthToken;

  factory UsersAndAuthModel.fromJson(Map<String, dynamic> json) =>
      _$UsersAndAuthModelFromJson(json);
}