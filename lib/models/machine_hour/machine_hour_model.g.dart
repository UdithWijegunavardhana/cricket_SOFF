// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'machine_hour_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MachineHourModel _$$_MachineHourModelFromJson(Map<String, dynamic> json) =>
    _$_MachineHourModel(
      id: json['_id'] as String?,
      customerId: json['customerId'] as String?,
      date: json['date'] as String?,
      hours: (json['hours'] as num?)?.toDouble(),
      type: json['type'] as String?,
      editable: json['editable'] as String?,
    );

Map<String, dynamic> _$$_MachineHourModelToJson(_$_MachineHourModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'customerId': instance.customerId,
      'date': instance.date,
      'hours': instance.hours,
      'type': instance.type,
      'editable': instance.editable,
    };
