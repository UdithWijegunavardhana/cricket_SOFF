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
      isReschedule: json['isReschedule'] as String?,
      isSendEmail:
          $enumDecodeNullable(_$BookingEmailStatusEnumMap, json['isSendEmail']),
      createdDateTime: json['createdDateTime'] as String?,
      subResourceList: json['subResourceList'] as List<dynamic>?,
      amount: json['amount'] as String?,
      timeId: json['timeId'] as String?,
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
      'subResourceList': instance.subResourceList,
      'amount': instance.amount,
      'timeId': instance.timeId,
    };

const _$BookingTimeSlotStatusEnumMap = {
  BookingTimeSlotStatus.Fixed: 'FIXED',
  BookingTimeSlotStatus.Requested: 'REQUESTED',
};

const _$BookingEmailStatusEnumMap = {
  BookingEmailStatus.SendEmail: 'SEND_EMAIL',
};
