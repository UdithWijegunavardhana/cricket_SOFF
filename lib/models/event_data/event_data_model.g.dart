// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventDataModel _$$_EventDataModelFromJson(Map<String, dynamic> json) =>
    _$_EventDataModel(
      id: json['_id'] as String?,
      date: json['date'] as String?,
      rescheduleDate: json['rescheduleDate'] as String?,
      resources: (json['resources'] as List<dynamic>?)
          ?.map((e) => ResourceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EventDataModelToJson(_$_EventDataModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'date': instance.date,
      'rescheduleDate': instance.rescheduleDate,
      'resources': instance.resources,
    };
