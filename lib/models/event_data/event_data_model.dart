import 'package:freezed_annotation/freezed_annotation.dart';
import '../resource/resource_model.dart';

part 'event_data_model.freezed.dart';
part 'event_data_model.g.dart';

@freezed
class EventDataModel with _$EventDataModel {

  const factory EventDataModel({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'rescheduleDate') String? rescheduleDate,
    @JsonKey(name: 'resources') List<ResourceModel>? resources,
  }) = _EventDataModel;

  factory EventDataModel.fromJson(Map<String, dynamic> json) =>
      _$EventDataModelFromJson(json);
}