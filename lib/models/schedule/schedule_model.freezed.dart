// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleModel _$ScheduleModelFromJson(Map<String, dynamic> json) {
  return _ScheduleModel.fromJson(json);
}

/// @nodoc
class _$ScheduleModelTearOff {
  const _$ScheduleModelTearOff();

  _ScheduleModel call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'traceId') String? traceId,
      @JsonKey(name: 'timestamp') String? timestamp,
      @JsonKey(name: 'data') EventDataModel? data}) {
    return _ScheduleModel(
      code: code,
      message: message,
      traceId: traceId,
      timestamp: timestamp,
      data: data,
    );
  }

  ScheduleModel fromJson(Map<String, Object?> json) {
    return ScheduleModel.fromJson(json);
  }
}

/// @nodoc
const $ScheduleModel = _$ScheduleModelTearOff();

/// @nodoc
mixin _$ScheduleModel {
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'traceId')
  String? get traceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  String? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  EventDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleModelCopyWith<ScheduleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleModelCopyWith<$Res> {
  factory $ScheduleModelCopyWith(
          ScheduleModel value, $Res Function(ScheduleModel) then) =
      _$ScheduleModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'traceId') String? traceId,
      @JsonKey(name: 'timestamp') String? timestamp,
      @JsonKey(name: 'data') EventDataModel? data});

  $EventDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$ScheduleModelCopyWithImpl<$Res>
    implements $ScheduleModelCopyWith<$Res> {
  _$ScheduleModelCopyWithImpl(this._value, this._then);

  final ScheduleModel _value;
  // ignore: unused_field
  final $Res Function(ScheduleModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? traceId = freezed,
    Object? timestamp = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
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
              as EventDataModel?,
    ));
  }

  @override
  $EventDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $EventDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$ScheduleModelCopyWith<$Res>
    implements $ScheduleModelCopyWith<$Res> {
  factory _$ScheduleModelCopyWith(
          _ScheduleModel value, $Res Function(_ScheduleModel) then) =
      __$ScheduleModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'traceId') String? traceId,
      @JsonKey(name: 'timestamp') String? timestamp,
      @JsonKey(name: 'data') EventDataModel? data});

  @override
  $EventDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$ScheduleModelCopyWithImpl<$Res>
    extends _$ScheduleModelCopyWithImpl<$Res>
    implements _$ScheduleModelCopyWith<$Res> {
  __$ScheduleModelCopyWithImpl(
      _ScheduleModel _value, $Res Function(_ScheduleModel) _then)
      : super(_value, (v) => _then(v as _ScheduleModel));

  @override
  _ScheduleModel get _value => super._value as _ScheduleModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? traceId = freezed,
    Object? timestamp = freezed,
    Object? data = freezed,
  }) {
    return _then(_ScheduleModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
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
              as EventDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleModel implements _ScheduleModel {
  const _$_ScheduleModel(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'traceId') this.traceId,
      @JsonKey(name: 'timestamp') this.timestamp,
      @JsonKey(name: 'data') this.data});

  factory _$_ScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleModelFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String? code;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'traceId')
  final String? traceId;
  @override
  @JsonKey(name: 'timestamp')
  final String? timestamp;
  @override
  @JsonKey(name: 'data')
  final EventDataModel? data;

  @override
  String toString() {
    return 'ScheduleModel(code: $code, message: $message, traceId: $traceId, timestamp: $timestamp, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScheduleModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.traceId, traceId) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(traceId),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$ScheduleModelCopyWith<_ScheduleModel> get copyWith =>
      __$ScheduleModelCopyWithImpl<_ScheduleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleModelToJson(this);
  }
}

abstract class _ScheduleModel implements ScheduleModel {
  const factory _ScheduleModel(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'traceId') String? traceId,
      @JsonKey(name: 'timestamp') String? timestamp,
      @JsonKey(name: 'data') EventDataModel? data}) = _$_ScheduleModel;

  factory _ScheduleModel.fromJson(Map<String, dynamic> json) =
      _$_ScheduleModel.fromJson;

  @override
  @JsonKey(name: 'code')
  String? get code;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'traceId')
  String? get traceId;
  @override
  @JsonKey(name: 'timestamp')
  String? get timestamp;
  @override
  @JsonKey(name: 'data')
  EventDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$ScheduleModelCopyWith<_ScheduleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
