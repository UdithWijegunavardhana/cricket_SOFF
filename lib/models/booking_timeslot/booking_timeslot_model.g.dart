// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_timeslot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookingTimeslotModel _$$_BookingTimeslotModelFromJson(
        Map<String, dynamic> json) =>
    _$_BookingTimeslotModel(
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      customerId: json['customerId'] as String?,
      comment: json['comment'] as String?,
      status:
          $enumDecodeNullable(_$BookingTimeSlotStatusEnumMap, json['status']),
      isReschedule: json['isReschedule'] as bool?,
      isSendEmail:
          $enumDecodeNullable(_$BookingEmailStatusEnumMap, json['isSendEmail']),
      createdDateTime: json['createdDateTime'] as String?,
    );

Map<String, dynamic> _$$_BookingTimeslotModelToJson(
        _$_BookingTimeslotModel instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'customerId': instance.customerId,
      'comment': instance.comment,
      'status': _$BookingTimeSlotStatusEnumMap[instance.status],
      'isReschedule': instance.isReschedule,
      'isSendEmail': _$BookingEmailStatusEnumMap[instance.isSendEmail],
      'createdDateTime': instance.createdDateTime,
    };

const _$BookingTimeSlotStatusEnumMap = {
  BookingTimeSlotStatus.Fixed: 'FIXED',
};

const _$BookingEmailStatusEnumMap = {
  BookingEmailStatus.SendEmail: 'SEND_EMAIL',
};
