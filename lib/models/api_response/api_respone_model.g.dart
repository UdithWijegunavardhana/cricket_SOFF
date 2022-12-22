// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_respone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiResponseModel _$$_ApiResponseModelFromJson(Map<String, dynamic> json) =>
    _$_ApiResponseModel(
      status: json['status'] as bool,
      apiStatus: json['apiStatus'] as int?,
      message: json['message'] as String? ?? '',
      data: json['data'],
    );

Map<String, dynamic> _$$_ApiResponseModelToJson(_$_ApiResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'apiStatus': instance.apiStatus,
      'message': instance.message,
      'data': instance.data,
    };
