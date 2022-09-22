import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_respone_model.freezed.dart';
part 'api_respone_model.g.dart';

@freezed
class ApiResponseModel with _$ApiResponseModel {

  const factory ApiResponseModel({
    required bool status,
    @Default('') String? message,
    dynamic data,
  }) = _ApiResponseModel;

  factory ApiResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseModelFromJson(json);
}