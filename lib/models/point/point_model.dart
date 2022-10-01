import 'package:freezed_annotation/freezed_annotation.dart';
part 'point_model.freezed.dart';
part 'point_model.g.dart';

@freezed
class PointModel with _$PointModel {

  const factory PointModel({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'purpose') String? purpose,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'points') String? points
  }) = _PointModel;

  factory PointModel.fromJson(Map<String, dynamic> json) =>
      _$PointModelFromJson(json);
}