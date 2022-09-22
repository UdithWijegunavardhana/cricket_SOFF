// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PointModel _$$_PointModelFromJson(Map<String, dynamic> json) =>
    _$_PointModel(
      id: json['_id'] as String?,
      email: json['email'] as String?,
      purpose: json['purpose'] as String?,
      date: json['date'] as String?,
      points: json['points'] as String?,
    );

Map<String, dynamic> _$$_PointModelToJson(_$_PointModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'email': instance.email,
      'purpose': instance.purpose,
      'date': instance.date,
      'points': instance.points,
    };
