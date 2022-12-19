import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed
class CustomerModel with _$CustomerModel {

  const factory CustomerModel({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'telephone') String? telephone,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'vaccination') bool? vaccination,
    @JsonKey(name: 'agreement') bool? agreement,
    @JsonKey(name: 'imageObject') String? imageObject
  }) = _CustomerModel;

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}