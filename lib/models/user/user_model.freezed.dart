// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

  _UserModel call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'telephone') String? telephone,
      @JsonKey(name: 'action') String? action,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'vaccination') bool? vaccination,
      @JsonKey(name: 'agreement') bool? agreement,
      @JsonKey(name: 'imageObject') String? imageObject,
      @JsonKey(name: 'isEditable') bool? isEditable}) {
    return _UserModel(
      id: id,
      firstName: firstName,
      lastName: lastName,
      telephone: telephone,
      action: action,
      email: email,
      image: image,
      vaccination: vaccination,
      agreement: agreement,
      imageObject: imageObject,
      isEditable: isEditable,
    );
  }

  UserModel fromJson(Map<String, Object?> json) {
    return UserModel.fromJson(json);
  }
}

/// @nodoc
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstName')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastName')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'telephone')
  String? get telephone => throw _privateConstructorUsedError;
  @JsonKey(name: 'action')
  String? get action => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'vaccination')
  bool? get vaccination => throw _privateConstructorUsedError;
  @JsonKey(name: 'agreement')
  bool? get agreement => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageObject')
  String? get imageObject => throw _privateConstructorUsedError;
  @JsonKey(name: 'isEditable')
  bool? get isEditable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'telephone') String? telephone,
      @JsonKey(name: 'action') String? action,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'vaccination') bool? vaccination,
      @JsonKey(name: 'agreement') bool? agreement,
      @JsonKey(name: 'imageObject') String? imageObject,
      @JsonKey(name: 'isEditable') bool? isEditable});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? telephone = freezed,
    Object? action = freezed,
    Object? email = freezed,
    Object? image = freezed,
    Object? vaccination = freezed,
    Object? agreement = freezed,
    Object? imageObject = freezed,
    Object? isEditable = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      telephone: telephone == freezed
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String?,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      vaccination: vaccination == freezed
          ? _value.vaccination
          : vaccination // ignore: cast_nullable_to_non_nullable
              as bool?,
      agreement: agreement == freezed
          ? _value.agreement
          : agreement // ignore: cast_nullable_to_non_nullable
              as bool?,
      imageObject: imageObject == freezed
          ? _value.imageObject
          : imageObject // ignore: cast_nullable_to_non_nullable
              as String?,
      isEditable: isEditable == freezed
          ? _value.isEditable
          : isEditable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'telephone') String? telephone,
      @JsonKey(name: 'action') String? action,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'vaccination') bool? vaccination,
      @JsonKey(name: 'agreement') bool? agreement,
      @JsonKey(name: 'imageObject') String? imageObject,
      @JsonKey(name: 'isEditable') bool? isEditable});
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? telephone = freezed,
    Object? action = freezed,
    Object? email = freezed,
    Object? image = freezed,
    Object? vaccination = freezed,
    Object? agreement = freezed,
    Object? imageObject = freezed,
    Object? isEditable = freezed,
  }) {
    return _then(_UserModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      telephone: telephone == freezed
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String?,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      vaccination: vaccination == freezed
          ? _value.vaccination
          : vaccination // ignore: cast_nullable_to_non_nullable
              as bool?,
      agreement: agreement == freezed
          ? _value.agreement
          : agreement // ignore: cast_nullable_to_non_nullable
              as bool?,
      imageObject: imageObject == freezed
          ? _value.imageObject
          : imageObject // ignore: cast_nullable_to_non_nullable
              as String?,
      isEditable: isEditable == freezed
          ? _value.isEditable
          : isEditable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'firstName') this.firstName,
      @JsonKey(name: 'lastName') this.lastName,
      @JsonKey(name: 'telephone') this.telephone,
      @JsonKey(name: 'action') this.action,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'vaccination') this.vaccination,
      @JsonKey(name: 'agreement') this.agreement,
      @JsonKey(name: 'imageObject') this.imageObject,
      @JsonKey(name: 'isEditable') this.isEditable});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'firstName')
  final String? firstName;
  @override
  @JsonKey(name: 'lastName')
  final String? lastName;
  @override
  @JsonKey(name: 'telephone')
  final String? telephone;
  @override
  @JsonKey(name: 'action')
  final String? action;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'vaccination')
  final bool? vaccination;
  @override
  @JsonKey(name: 'agreement')
  final bool? agreement;
  @override
  @JsonKey(name: 'imageObject')
  final String? imageObject;
  @override
  @JsonKey(name: 'isEditable')
  final bool? isEditable;

  @override
  String toString() {
    return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, telephone: $telephone, action: $action, email: $email, image: $image, vaccination: $vaccination, agreement: $agreement, imageObject: $imageObject, isEditable: $isEditable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.telephone, telephone) &&
            const DeepCollectionEquality().equals(other.action, action) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.vaccination, vaccination) &&
            const DeepCollectionEquality().equals(other.agreement, agreement) &&
            const DeepCollectionEquality()
                .equals(other.imageObject, imageObject) &&
            const DeepCollectionEquality()
                .equals(other.isEditable, isEditable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(telephone),
      const DeepCollectionEquality().hash(action),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(vaccination),
      const DeepCollectionEquality().hash(agreement),
      const DeepCollectionEquality().hash(imageObject),
      const DeepCollectionEquality().hash(isEditable));

  @JsonKey(ignore: true)
  @override
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'telephone') String? telephone,
      @JsonKey(name: 'action') String? action,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'vaccination') bool? vaccination,
      @JsonKey(name: 'agreement') bool? agreement,
      @JsonKey(name: 'imageObject') String? imageObject,
      @JsonKey(name: 'isEditable') bool? isEditable}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'firstName')
  String? get firstName;
  @override
  @JsonKey(name: 'lastName')
  String? get lastName;
  @override
  @JsonKey(name: 'telephone')
  String? get telephone;
  @override
  @JsonKey(name: 'action')
  String? get action;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'vaccination')
  bool? get vaccination;
  @override
  @JsonKey(name: 'agreement')
  bool? get agreement;
  @override
  @JsonKey(name: 'imageObject')
  String? get imageObject;
  @override
  @JsonKey(name: 'isEditable')
  bool? get isEditable;
  @override
  @JsonKey(ignore: true)
  _$UserModelCopyWith<_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
