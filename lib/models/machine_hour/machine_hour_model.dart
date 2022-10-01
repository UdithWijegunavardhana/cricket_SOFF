import 'package:freezed_annotation/freezed_annotation.dart';
part 'machine_hour_model.freezed.dart';
part 'machine_hour_model.g.dart';

@freezed
class MachineHourModel with _$MachineHourModel {

  const factory MachineHourModel({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'customerId') String? customerId,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'hours') double? hours,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'editable') String? editable,
  }) = _MachineHourModel;

  factory MachineHourModel.fromJson(Map<String, dynamic> json) =>
      _$MachineHourModelFromJson(json);
}