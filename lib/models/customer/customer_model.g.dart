// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerModel _$$_CustomerModelFromJson(Map<String, dynamic> json) =>
    _$_CustomerModel(
      id: json['_id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      telephone: json['telephone'] as String?,
      email: json['email'] as String?,
      image: json['image'] as String?,
      vaccination: json['vaccination'] as bool?,
      agreement: json['agreement'] as bool?,
      imageObject: json['imageObject'] as String?,
    );

Map<String, dynamic> _$$_CustomerModelToJson(_$_CustomerModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'telephone': instance.telephone,
      'email': instance.email,
      'image': instance.image,
      'vaccination': instance.vaccination,
      'agreement': instance.agreement,
      'imageObject': instance.imageObject,
    };
