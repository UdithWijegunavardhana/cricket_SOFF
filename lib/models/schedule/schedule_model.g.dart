// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleModel _$$_ScheduleModelFromJson(Map<String, dynamic> json) =>
    _$_ScheduleModel(
      code: json['code'] as String?,
      message: json['message'] as String?,
      traceId: json['traceId'] as String?,
      timestamp: json['timestamp'] as String?,
      data: json['data'] == null
          ? null
          : EventDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ScheduleModelToJson(_$_ScheduleModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'traceId': instance.traceId,
      'timestamp': instance.timestamp,
      'data': instance.data,
    };
