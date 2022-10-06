// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['_id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      telephone: json['telephone'] as String?,
      action: json['action'] as String?,
      email: json['email'] as String?,
      image: json['image'] as String?,
      vaccination: json['vaccination'] as bool?,
      agreement: json['agreement'] as bool?,
      imageObject: json['imageObject'] as String?,
      isEditable: json['isEditable'] as bool?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'telephone': instance.telephone,
      'action': instance.action,
      'email': instance.email,
      'image': instance.image,
      'vaccination': instance.vaccination,
      'agreement': instance.agreement,
      'imageObject': instance.imageObject,
      'isEditable': instance.isEditable,
    };
