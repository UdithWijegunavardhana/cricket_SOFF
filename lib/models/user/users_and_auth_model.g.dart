// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_and_auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterUser _$$RegisterUserFromJson(Map<String, dynamic> json) =>
    _$RegisterUser(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RegisterUserToJson(_$RegisterUser instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'runtimeType': instance.$type,
    };

_$LoginAuthToken _$$LoginAuthTokenFromJson(Map<String, dynamic> json) =>
    _$LoginAuthToken(
      token: json['token'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoginAuthTokenToJson(_$LoginAuthToken instance) =>
    <String, dynamic>{
      'token': instance.token,
      'runtimeType': instance.$type,
    };
