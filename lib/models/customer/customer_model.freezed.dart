// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) {
  return _CustomerModel.fromJson(json);
}

/// @nodoc
class _$CustomerModelTearOff {
  const _$CustomerModelTearOff();

  _CustomerModel call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'telephone') String? telephone,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'vaccination') bool? vaccination,
      @JsonKey(name: 'agreement') bool? agreement,
      @JsonKey(name: 'imageObject') String? imageObject}) {
    return _CustomerModel(
      id: id,
      firstName: firstName,
      lastName: lastName,
      telephone: telephone,
      email: email,
      image: image,
      vaccination: vaccination,
      agreement: agreement,
      imageObject: imageObject,
    );
  }

  CustomerModel fromJson(Map<String, Object?> json) {
    return CustomerModel.fromJson(json);
  }
}

/// @nodoc
const $CustomerModel = _$CustomerModelTearOff();

/// @nodoc
mixin _$CustomerModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstName')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastName')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'telephone')
  String? get telephone => throw _privateConstructorUsedError;
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerModelCopyWith<CustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerModelCopyWith<$Res> {
  factory $CustomerModelCopyWith(
          CustomerModel value, $Res Function(CustomerModel) then) =
      _$CustomerModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'telephone') String? telephone,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'vaccination') bool? vaccination,
      @JsonKey(name: 'agreement') bool? agreement,
      @JsonKey(name: 'imageObject') String? imageObject});
}

/// @nodoc
class _$CustomerModelCopyWithImpl<$Res>
    implements $CustomerModelCopyWith<$Res> {
  _$CustomerModelCopyWithImpl(this._value, this._then);

  final CustomerModel _value;
  // ignore: unused_field
  final $Res Function(CustomerModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? telephone = freezed,
    Object? email = freezed,
    Object? image = freezed,
    Object? vaccination = freezed,
    Object? agreement = freezed,
    Object? imageObject = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$CustomerModelCopyWith<$Res>
    implements $CustomerModelCopyWith<$Res> {
  factory _$CustomerModelCopyWith(
          _CustomerModel value, $Res Function(_CustomerModel) then) =
      __$CustomerModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'telephone') String? telephone,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'vaccination') bool? vaccination,
      @JsonKey(name: 'agreement') bool? agreement,
      @JsonKey(name: 'imageObject') String? imageObject});
}

/// @nodoc
class __$CustomerModelCopyWithImpl<$Res>
    extends _$CustomerModelCopyWithImpl<$Res>
    implements _$CustomerModelCopyWith<$Res> {
  __$CustomerModelCopyWithImpl(
      _CustomerModel _value, $Res Function(_CustomerModel) _then)
      : super(_value, (v) => _then(v as _CustomerModel));

  @override
  _CustomerModel get _value => super._value as _CustomerModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? telephone = freezed,
    Object? email = freezed,
    Object? image = freezed,
    Object? vaccination = freezed,
    Object? agreement = freezed,
    Object? imageObject = freezed,
  }) {
    return _then(_CustomerModel(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerModel implements _CustomerModel {
  const _$_CustomerModel(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'firstName') this.firstName,
      @JsonKey(name: 'lastName') this.lastName,
      @JsonKey(name: 'telephone') this.telephone,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'vaccination') this.vaccination,
      @JsonKey(name: 'agreement') this.agreement,
      @JsonKey(name: 'imageObject') this.imageObject});

  factory _$_CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerModelFromJson(json);

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
  String toString() {
    return 'CustomerModel(id: $id, firstName: $firstName, lastName: $lastName, telephone: $telephone, email: $email, image: $image, vaccination: $vaccination, agreement: $agreement, imageObject: $imageObject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.telephone, telephone) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.vaccination, vaccination) &&
            const DeepCollectionEquality().equals(other.agreement, agreement) &&
            const DeepCollectionEquality()
                .equals(other.imageObject, imageObject));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(telephone),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(vaccination),
      const DeepCollectionEquality().hash(agreement),
      const DeepCollectionEquality().hash(imageObject));

  @JsonKey(ignore: true)
  @override
  _$CustomerModelCopyWith<_CustomerModel> get copyWith =>
      __$CustomerModelCopyWithImpl<_CustomerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerModelToJson(this);
  }
}

abstract class _CustomerModel implements CustomerModel {
  const factory _CustomerModel(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'telephone') String? telephone,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'vaccination') bool? vaccination,
      @JsonKey(name: 'agreement') bool? agreement,
      @JsonKey(name: 'imageObject') String? imageObject}) = _$_CustomerModel;

  factory _CustomerModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerModel.fromJson;

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
  @JsonKey(ignore: true)
  _$CustomerModelCopyWith<_CustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
