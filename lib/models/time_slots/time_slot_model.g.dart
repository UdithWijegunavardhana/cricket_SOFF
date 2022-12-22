// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_slot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeSlotModel _$$_TimeSlotModelFromJson(Map<String, dynamic> json) =>
    _$_TimeSlotModel(
      id: json['_id'] as String?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      comment: json['comment'] as String?,
      status: json['status'] as String?,
      customerId: json['customerId'] as String?,
      subResourceList: (json['subResourceList'] as List<dynamic>?)
          ?.map((e) => SubResourceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      customer: json['customer'] == null
          ? null
          : CustomerModel.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TimeSlotModelToJson(_$_TimeSlotModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'comment': instance.comment,
      'status': instance.status,
      'customerId': instance.customerId,
      'subResourceList': instance.subResourceList,
      'customer': instance.customer,
    };
