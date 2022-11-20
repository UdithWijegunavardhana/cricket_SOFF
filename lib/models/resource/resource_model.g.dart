// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResourceModel _$$_ResourceModelFromJson(Map<String, dynamic> json) =>
    _$_ResourceModel(
      id: json['_id'] as String?,
      resourceCategorieId: json['resourceCategorieId'] as String?,
      resourceCategorieName: json['resourceCategorieName'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      subResourceList: (json['subResourceList'] as List<dynamic>?)
          ?.map((e) => SubResourceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeslots: (json['timeslots'] as List<dynamic>?)
          ?.map((e) => TimeSlotModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResourceModelToJson(_$_ResourceModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'resourceCategorieId': instance.resourceCategorieId,
      'resourceCategorieName': instance.resourceCategorieName,
      'code': instance.code,
      'description': instance.description,
      'subResourceList': instance.subResourceList,
      'timeslots': instance.timeslots,
    };
