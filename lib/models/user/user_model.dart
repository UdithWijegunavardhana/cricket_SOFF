import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {

  const factory UserModel({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'telephone') String? telephone,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'vaccination') bool? vaccination,
    @JsonKey(name: 'agreement') bool? agreement,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}