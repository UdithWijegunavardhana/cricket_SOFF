// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookingScheduleModel _$$_BookingScheduleModelFromJson(
        Map<String, dynamic> json) =>
    _$_BookingScheduleModel(
      id: json['_id'] as String?,
      date: json['date'] as String?,
      resources: (json['resources'] as List<dynamic>?)
          ?.map((e) => BookingResourceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BookingScheduleModelToJson(
        _$_BookingScheduleModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'date': instance.date,
      'resources': instance.resources,
    };
