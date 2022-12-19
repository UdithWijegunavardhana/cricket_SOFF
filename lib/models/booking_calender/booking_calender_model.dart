import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_calender_model.freezed.dart';
part 'booking_calender_model.g.dart';

@freezed
class BookingCalenderModel with _$BookingCalenderModel {

  const factory BookingCalenderModel({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'traceId') String? traceId,
    @JsonKey(name: 'timestamp') String? timestamp,
    @JsonKey(name: 'data') String? data,
  }) = _BookingCalenderModel;

  factory BookingCalenderModel.fromJson(Map<String, dynamic> json) =>
      _$BookingCalenderModelFromJson(json);
}