import 'package:freezed_annotation/freezed_annotation.dart';
import '../booking_resource/booking_resource_model.dart';

part 'booking_schedule_model.freezed.dart';
part 'booking_schedule_model.g.dart';

@freezed
class BookingScheduleModel with _$BookingScheduleModel {

  const factory BookingScheduleModel({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'resources') List<BookingResourceModel>? resources,
  }) = _BookingScheduleModel;

  factory BookingScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$BookingScheduleModelFromJson(json);
}