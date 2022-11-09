import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soff_cricket_hybrid/models/customer/customer_model.dart';

part 'booking_timeslot_model.freezed.dart';
part 'booking_timeslot_model.g.dart';

@freezed
class BookingTimeslotModel with _$BookingTimeslotModel {

  const factory BookingTimeslotModel({
    @JsonKey(name: 'startTime') String? startTime,
    @JsonKey(name: 'endTime') String? endTime,
    @JsonKey(name: 'customerId') String? customerId,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'customer') CustomerModel? customer,
  }) = _BookingTimeslotModel;

  factory BookingTimeslotModel.fromJson(Map<String, dynamic> json) =>
      _$BookingTimeslotModelFromJson(json);
}