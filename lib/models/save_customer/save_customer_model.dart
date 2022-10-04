import 'package:freezed_annotation/freezed_annotation.dart';
part 'save_customer_model.freezed.dart';
part 'save_customer_model.g.dart';

@freezed
class SaveCustomerModel with _$SaveCustomerModel {
  const factory SaveCustomerModel({
    @JsonKey(name: 'action') String? action,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'imageObject') String? imageObject,
    @JsonKey(name: 'isEditable') bool? isEditable,
    @JsonKey(name: 'telephone') String? telephone,
  }) = _SaveCustomerModel;

  factory SaveCustomerModel.fromJson(Map<String, dynamic> json) =>
      _$SaveCustomerModelFromJson(json);

}