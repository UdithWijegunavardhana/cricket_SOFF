// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SaveCustomerModel _$$_SaveCustomerModelFromJson(Map<String, dynamic> json) =>
    _$_SaveCustomerModel(
      action: json['action'] as String?,
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      image: json['image'] as String?,
      imageObject: json['imageObject'] as String?,
      isEditable: json['isEditable'] as bool?,
      telephone: json['telephone'] as String?,
    );

Map<String, dynamic> _$$_SaveCustomerModelToJson(
        _$_SaveCustomerModel instance) =>
    <String, dynamic>{
      'action': instance.action,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'image': instance.image,
      'imageObject': instance.imageObject,
      'isEditable': instance.isEditable,
      'telephone': instance.telephone,
    };
