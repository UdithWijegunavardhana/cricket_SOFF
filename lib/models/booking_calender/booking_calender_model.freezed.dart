// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booking_calender_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingCalenderModel _$BookingCalenderModelFromJson(Map<String, dynamic> json) {
  return _BookingCalenderModel.fromJson(json);
}

/// @nodoc
class _$BookingCalenderModelTearOff {
  const _$BookingCalenderModelTearOff();

  _BookingCalenderModel call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'traceId') String? traceId,
      @JsonKey(name: 'timestamp') String? timestamp,
      @JsonKey(name: 'data') String? data}) {
    return _BookingCalenderModel(
      id: id,
      date: date,
      traceId: traceId,
      timestamp: timestamp,
      data: data,
    );
  }

  BookingCalenderModel fromJson(Map<String, Object?> json) {
    return BookingCalenderModel.fromJson(json);
  }
}

/// @nodoc
const $BookingCalenderModel = _$BookingCalenderModelTearOff();

/// @nodoc
mixin _$BookingCalenderModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'traceId')
  String? get traceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  String? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingCalenderModelCopyWith<BookingCalenderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCalenderModelCopyWith<$Res> {
  factory $BookingCalenderModelCopyWith(BookingCalenderModel value,
          $Res Function(BookingCalenderModel) then) =
      _$BookingCalenderModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'traceId') String? traceId,
      @JsonKey(name: 'timestamp') String? timestamp,
      @JsonKey(name: 'data') String? data});
}

/// @nodoc
class _$BookingCalenderModelCopyWithImpl<$Res>
    implements $BookingCalenderModelCopyWith<$Res> {
  _$BookingCalenderModelCopyWithImpl(this._value, this._then);

  final BookingCalenderModel _value;
  // ignore: unused_field
  final $Res Function(BookingCalenderModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? traceId = freezed,
    Object? timestamp = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      traceId: traceId == freezed
          ? _value.traceId
          : traceId // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BookingCalenderModelCopyWith<$Res>
    implements $BookingCalenderModelCopyWith<$Res> {
  factory _$BookingCalenderModelCopyWith(_BookingCalenderModel value,
          $Res Function(_BookingCalenderModel) then) =
      __$BookingCalenderModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'traceId') String? traceId,
      @JsonKey(name: 'timestamp') String? timestamp,
      @JsonKey(name: 'data') String? data});
}

/// @nodoc
class __$BookingCalenderModelCopyWithImpl<$Res>
    extends _$BookingCalenderModelCopyWithImpl<$Res>
    implements _$BookingCalenderModelCopyWith<$Res> {
  __$BookingCalenderModelCopyWithImpl(
      _BookingCalenderModel _value, $Res Function(_BookingCalenderModel) _then)
      : super(_value, (v) => _then(v as _BookingCalenderModel));

  @override
  _BookingCalenderModel get _value => super._value as _BookingCalenderModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? traceId = freezed,
    Object? timestamp = freezed,
    Object? data = freezed,
  }) {
    return _then(_BookingCalenderModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      traceId: traceId == freezed
          ? _value.traceId
          : traceId // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookingCalenderModel implements _BookingCalenderModel {
  const _$_BookingCalenderModel(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'traceId') this.traceId,
      @JsonKey(name: 'timestamp') this.timestamp,
      @JsonKey(name: 'data') this.data});

  factory _$_BookingCalenderModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookingCalenderModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'traceId')
  final String? traceId;
  @override
  @JsonKey(name: 'timestamp')
  final String? timestamp;
  @override
  @JsonKey(name: 'data')
  final String? data;

  @override
  String toString() {
    return 'BookingCalenderModel(id: $id, date: $date, traceId: $traceId, timestamp: $timestamp, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookingCalenderModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.traceId, traceId) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(traceId),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$BookingCalenderModelCopyWith<_BookingCalenderModel> get copyWith =>
      __$BookingCalenderModelCopyWithImpl<_BookingCalenderModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookingCalenderModelToJson(this);
  }
}

abstract class _BookingCalenderModel implements BookingCalenderModel {
  const factory _BookingCalenderModel(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'traceId') String? traceId,
      @JsonKey(name: 'timestamp') String? timestamp,
      @JsonKey(name: 'data') String? data}) = _$_BookingCalenderModel;

  factory _BookingCalenderModel.fromJson(Map<String, dynamic> json) =
      _$_BookingCalenderModel.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'traceId')
  String? get traceId;
  @override
  @JsonKey(name: 'timestamp')
  String? get timestamp;
  @override
  @JsonKey(name: 'data')
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$BookingCalenderModelCopyWith<_BookingCalenderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
