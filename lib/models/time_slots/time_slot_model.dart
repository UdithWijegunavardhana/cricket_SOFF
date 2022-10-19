import 'package:freezed_annotation/freezed_annotation.dart';

import '../customer/customer_model.dart';
import '../sub_resource/sub_resource_model.dart';
part 'time_slot_model.freezed.dart';
part 'time_slot_model.g.dart';

@freezed
class TimeSlotModel with _$TimeSlotModel {

  const factory TimeSlotModel({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'startTime') String? startTime,
    @JsonKey(name: 'endTime') String? endTime,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'customerId') String? customerId,
    @JsonKey(name: 'subResourceList') List<SubResourceModel>? subResourceList,
    @JsonKey(name: 'customer') CustomerModel? customer,
  }) = _TimeSlotModel;

  factory TimeSlotModel.fromJson(Map<String, dynamic> json) =>
      _$TimeSlotModelFromJson(json);
}