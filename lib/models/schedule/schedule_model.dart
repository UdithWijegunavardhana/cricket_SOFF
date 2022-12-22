import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soff_cricket_hybrid/models/event_data/event_data_model.dart';
part 'schedule_model.freezed.dart';
part 'schedule_model.g.dart';

@freezed
class ScheduleModel with _$ScheduleModel {

  const factory ScheduleModel({
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'traceId') String? traceId,
    @JsonKey(name: 'timestamp') String? timestamp,
    @JsonKey(name: 'data') EventDataModel? data,
  }) = _ScheduleModel;

  factory ScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleModelFromJson(json);
}