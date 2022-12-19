// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_resource_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookingResourceModel _$$_BookingResourceModelFromJson(
        Map<String, dynamic> json) =>
    _$_BookingResourceModel(
      id: json['_id'] as String?,
      timeslots: (json['timeslots'] as List<dynamic>?)
          ?.map((e) => BookingTimeslotModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BookingResourceModelToJson(
        _$_BookingResourceModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'timeslots': instance.timeslots,
    };
