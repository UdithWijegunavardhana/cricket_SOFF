import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soff_cricket_hybrid/models/sub_resource/sub_resource_model.dart';

import '../time_slots/time_slot_model.dart';
part 'resource_model.freezed.dart';
part 'resource_model.g.dart';

@freezed
class ResourceModel with _$ResourceModel {

  const factory ResourceModel({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'resourceCategorieId') String? resourceCategorieId,
    @JsonKey(name: 'resourceCategorieName') String? resourceCategorieName,
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'subResourceList') List<SubResourceModel>? subResourceList,
    @JsonKey(name: 'timeslots') List<TimeSlotModel>? timeslots,
  }) = _ResourceModel;

  factory ResourceModel.fromJson(Map<String, dynamic> json) =>
      _$ResourceModelFromJson(json);
}