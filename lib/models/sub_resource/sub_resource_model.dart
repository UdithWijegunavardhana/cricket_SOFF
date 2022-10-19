import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_resource_model.freezed.dart';
part 'sub_resource_model.g.dart';

@freezed
class SubResourceModel with _$SubResourceModel {

  const factory SubResourceModel({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
  }) = _SubResourceModel;

  factory SubResourceModel.fromJson(Map<String, dynamic> json) =>
      _$SubResourceModelFromJson(json);
}