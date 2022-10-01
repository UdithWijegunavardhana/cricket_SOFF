// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'machine_hour_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MachineHourModel _$MachineHourModelFromJson(Map<String, dynamic> json) {
  return _MachineHourModel.fromJson(json);
}

/// @nodoc
class _$MachineHourModelTearOff {
  const _$MachineHourModelTearOff();

  _MachineHourModel call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'customerId') String? customerId,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'hours') double? hours,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'editable') String? editable}) {
    return _MachineHourModel(
      id: id,
      customerId: customerId,
      date: date,
      hours: hours,
      type: type,
      editable: editable,
    );
  }

  MachineHourModel fromJson(Map<String, Object?> json) {
    return MachineHourModel.fromJson(json);
  }
}

/// @nodoc
const $MachineHourModel = _$MachineHourModelTearOff();

/// @nodoc
mixin _$MachineHourModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'customerId')
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'hours')
  double? get hours => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'editable')
  String? get editable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MachineHourModelCopyWith<MachineHourModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MachineHourModelCopyWith<$Res> {
  factory $MachineHourModelCopyWith(
          MachineHourModel value, $Res Function(MachineHourModel) then) =
      _$MachineHourModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'customerId') String? customerId,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'hours') double? hours,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'editable') String? editable});
}

/// @nodoc
class _$MachineHourModelCopyWithImpl<$Res>
    implements $MachineHourModelCopyWith<$Res> {
  _$MachineHourModelCopyWithImpl(this._value, this._then);

  final MachineHourModel _value;
  // ignore: unused_field
  final $Res Function(MachineHourModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerId = freezed,
    Object? date = freezed,
    Object? hours = freezed,
    Object? type = freezed,
    Object? editable = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as double?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      editable: editable == freezed
          ? _value.editable
          : editable // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MachineHourModelCopyWith<$Res>
    implements $MachineHourModelCopyWith<$Res> {
  factory _$MachineHourModelCopyWith(
          _MachineHourModel value, $Res Function(_MachineHourModel) then) =
      __$MachineHourModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'customerId') String? customerId,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'hours') double? hours,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'editable') String? editable});
}

/// @nodoc
class __$MachineHourModelCopyWithImpl<$Res>
    extends _$MachineHourModelCopyWithImpl<$Res>
    implements _$MachineHourModelCopyWith<$Res> {
  __$MachineHourModelCopyWithImpl(
      _MachineHourModel _value, $Res Function(_MachineHourModel) _then)
      : super(_value, (v) => _then(v as _MachineHourModel));

  @override
  _MachineHourModel get _value => super._value as _MachineHourModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerId = freezed,
    Object? date = freezed,
    Object? hours = freezed,
    Object? type = freezed,
    Object? editable = freezed,
  }) {
    return _then(_MachineHourModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as double?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      editable: editable == freezed
          ? _value.editable
          : editable // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MachineHourModel implements _MachineHourModel {
  const _$_MachineHourModel(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'customerId') this.customerId,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'hours') this.hours,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'editable') this.editable});

  factory _$_MachineHourModel.fromJson(Map<String, dynamic> json) =>
      _$$_MachineHourModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'customerId')
  final String? customerId;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'hours')
  final double? hours;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'editable')
  final String? editable;

  @override
  String toString() {
    return 'MachineHourModel(id: $id, customerId: $customerId, date: $date, hours: $hours, type: $type, editable: $editable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MachineHourModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.hours, hours) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.editable, editable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(hours),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(editable));

  @JsonKey(ignore: true)
  @override
  _$MachineHourModelCopyWith<_MachineHourModel> get copyWith =>
      __$MachineHourModelCopyWithImpl<_MachineHourModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MachineHourModelToJson(this);
  }
}

abstract class _MachineHourModel implements MachineHourModel {
  const factory _MachineHourModel(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'customerId') String? customerId,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'hours') double? hours,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'editable') String? editable}) = _$_MachineHourModel;

  factory _MachineHourModel.fromJson(Map<String, dynamic> json) =
      _$_MachineHourModel.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'customerId')
  String? get customerId;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'hours')
  double? get hours;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'editable')
  String? get editable;
  @override
  @JsonKey(ignore: true)
  _$MachineHourModelCopyWith<_MachineHourModel> get copyWith =>
      throw _privateConstructorUsedError;
}
