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
      customer: json['customer'] == null
          ? null
          : CustomerModel.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookingTimeslotModelToJson(
        _$_BookingTimeslotModel instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'customerId': instance.customerId,
      'comment': instance.comment,
      'customer': instance.customer,
    };
