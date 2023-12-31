import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soff_cricket_hybrid/models/booking_timeslot/booking_timeslot_model.dart';
import 'package:soff_cricket_hybrid/models/event_data/event_data_model.dart';

part 'booking_resource_model.freezed.dart';
part 'booking_resource_model.g.dart';

@freezed
class BookingResourceModel with _$BookingResourceModel {

  const factory BookingResourceModel({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'timeslots') List<BookingTimeslotModel>? timeslots,
  }) = _BookingResourceModel;

  factory BookingResourceModel.fromJson(Map<String, dynamic> json) =>
      _$BookingResourceModelFromJson(json);
}