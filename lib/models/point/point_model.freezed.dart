// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'point_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PointModel _$PointModelFromJson(Map<String, dynamic> json) {
  return _PointModel.fromJson(json);
}

/// @nodoc
class _$PointModelTearOff {
  const _$PointModelTearOff();

  _PointModel call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'purpose') String? purpose,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'points') String? points}) {
    return _PointModel(
      id: id,
      email: email,
      purpose: purpose,
      date: date,
      points: points,
    );
  }

  PointModel fromJson(Map<String, Object?> json) {
    return PointModel.fromJson(json);
  }
}

/// @nodoc
const $PointModel = _$PointModelTearOff();

/// @nodoc
mixin _$PointModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'purpose')
  String? get purpose => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'points')
  String? get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointModelCopyWith<PointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointModelCopyWith<$Res> {
  factory $PointModelCopyWith(
          PointModel value, $Res Function(PointModel) then) =
      _$PointModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'purpose') String? purpose,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'points') String? points});
}

/// @nodoc
class _$PointModelCopyWithImpl<$Res> implements $PointModelCopyWith<$Res> {
  _$PointModelCopyWithImpl(this._value, this._then);

  final PointModel _value;
  // ignore: unused_field
  final $Res Function(PointModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? purpose = freezed,
    Object? date = freezed,
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PointModelCopyWith<$Res> implements $PointModelCopyWith<$Res> {
  factory _$PointModelCopyWith(
          _PointModel value, $Res Function(_PointModel) then) =
      __$PointModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'purpose') String? purpose,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'points') String? points});
}

/// @nodoc
class __$PointModelCopyWithImpl<$Res> extends _$PointModelCopyWithImpl<$Res>
    implements _$PointModelCopyWith<$Res> {
  __$PointModelCopyWithImpl(
      _PointModel _value, $Res Function(_PointModel) _then)
      : super(_value, (v) => _then(v as _PointModel));

  @override
  _PointModel get _value => super._value as _PointModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? purpose = freezed,
    Object? date = freezed,
    Object? points = freezed,
  }) {
    return _then(_PointModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PointModel implements _PointModel {
  const _$_PointModel(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'purpose') this.purpose,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'points') this.points});

  factory _$_PointModel.fromJson(Map<String, dynamic> json) =>
      _$$_PointModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'purpose')
  final String? purpose;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'points')
  final String? points;

  @override
  String toString() {
    return 'PointModel(id: $id, email: $email, purpose: $purpose, date: $date, points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PointModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.purpose, purpose) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.points, points));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(purpose),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(points));

  @JsonKey(ignore: true)
  @override
  _$PointModelCopyWith<_PointModel> get copyWith =>
      __$PointModelCopyWithImpl<_PointModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PointModelToJson(this);
  }
}

abstract class _PointModel implements PointModel {
  const factory _PointModel(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'purpose') String? purpose,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'points') String? points}) = _$_PointModel;

  factory _PointModel.fromJson(Map<String, dynamic> json) =
      _$_PointModel.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'purpose')
  String? get purpose;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'points')
  String? get points;
  @override
  @JsonKey(ignore: true)
  _$PointModelCopyWith<_PointModel> get copyWith =>
      throw _privateConstructorUsedError;
}
