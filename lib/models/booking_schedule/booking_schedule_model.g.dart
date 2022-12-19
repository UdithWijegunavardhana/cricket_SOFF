// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookingScheduleModel _$$_BookingScheduleModelFromJson(
        Map<String, dynamic> json) =>
    _$_BookingScheduleModel(
      actionStatus: $enumDecodeNullable(
          _$BookingActionStatusEnumMap, json['actionStatus']),
      date: json['date'] as String?,
      rescheduleDate: json['rescheduleDate'] as String?,
      resources: (json['resources'] as List<dynamic>?)
          ?.map((e) => BookingResourceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BookingScheduleModelToJson(
        _$_BookingScheduleModel instance) =>
    <String, dynamic>{
      'actionStatus': _$BookingActionStatusEnumMap[instance.actionStatus],
      'date': instance.date,
      'rescheduleDate': instance.rescheduleDate,
      'resources': instance.resources,
    };

const _$BookingActionStatusEnumMap = {
  BookingActionStatus.Save: 'SAVE',
};
