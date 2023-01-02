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
    @JsonKey(name: 'status') BookingTimeSlotStatus? status,
    @JsonKey(name: 'isReschedule') String? isReschedule,
    @JsonKey(name: 'isSendEmail') BookingEmailStatus? isSendEmail,
    @JsonKey(name: 'createdDateTime') String? createdDateTime,
    @JsonKey(name: 'subResourceList') List? subResourceList,
    @JsonKey(name: 'amount') String? amount,
    @JsonKey(name: 'timeId') String? timeId,
  }) = _BookingTimeslotModel;

  factory BookingTimeslotModel.fromJson(Map<String, dynamic> json) =>
      _$BookingTimeslotModelFromJson(json);
}

enum BookingEmailStatus {
  @JsonValue("SEND_EMAIL")
  SendEmail
}

enum BookingTimeSlotStatus {
  @JsonValue("FIXED")
  Fixed,
  @JsonValue("REQUESTED")
  Requested,
}