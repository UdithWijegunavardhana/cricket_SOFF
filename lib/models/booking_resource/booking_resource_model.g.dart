// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_resource_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookingResourceModel _$$_BookingResourceModelFromJson(
        Map<String, dynamic> json) =>
    _$_BookingResourceModel(
      id: json['_id'] as String?,
      resourceCategorieId: json['resourceCategorieId'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      timeslots: (json['timeslots'] as List<dynamic>?)
          ?.map((e) => BookingTimeslotModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeslotsCalender: json['timeslotsCalender'] == null
          ? null
          : EventDataModel.fromJson(
              json['timeslotsCalender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookingResourceModelToJson(
        _$_BookingResourceModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'resourceCategorieId': instance.resourceCategorieId,
      'code': instance.code,
      'description': instance.description,
      'timeslots': instance.timeslots,
      'timeslotsCalender': instance.timeslotsCalender,
    };
