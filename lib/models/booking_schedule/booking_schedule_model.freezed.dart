// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booking_schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingScheduleModel _$BookingScheduleModelFromJson(Map<String, dynamic> json) {
  return _BookingScheduleModel.fromJson(json);
}

/// @nodoc
class _$BookingScheduleModelTearOff {
  const _$BookingScheduleModelTearOff();

  _BookingScheduleModel call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'resources') List<BookingResourceModel>? resources}) {
    return _BookingScheduleModel(
      id: id,
      date: date,
      resources: resources,
    );
  }

  BookingScheduleModel fromJson(Map<String, Object?> json) {
    return BookingScheduleModel.fromJson(json);
  }
}

/// @nodoc
const $BookingScheduleModel = _$BookingScheduleModelTearOff();

/// @nodoc
mixin _$BookingScheduleModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'resources')
  List<BookingResourceModel>? get resources =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingScheduleModelCopyWith<BookingScheduleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingScheduleModelCopyWith<$Res> {
  factory $BookingScheduleModelCopyWith(BookingScheduleModel value,
          $Res Function(BookingScheduleModel) then) =
      _$BookingScheduleModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'resources') List<BookingResourceModel>? resources});
}

/// @nodoc
class _$BookingScheduleModelCopyWithImpl<$Res>
    implements $BookingScheduleModelCopyWith<$Res> {
  _$BookingScheduleModelCopyWithImpl(this._value, this._then);

  final BookingScheduleModel _value;
  // ignore: unused_field
  final $Res Function(BookingScheduleModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? resources = freezed,
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
      resources: resources == freezed
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<BookingResourceModel>?,
    ));
  }
}

/// @nodoc
abstract class _$BookingScheduleModelCopyWith<$Res>
    implements $BookingScheduleModelCopyWith<$Res> {
  factory _$BookingScheduleModelCopyWith(_BookingScheduleModel value,
          $Res Function(_BookingScheduleModel) then) =
      __$BookingScheduleModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'resources') List<BookingResourceModel>? resources});
}

/// @nodoc
class __$BookingScheduleModelCopyWithImpl<$Res>
    extends _$BookingScheduleModelCopyWithImpl<$Res>
    implements _$BookingScheduleModelCopyWith<$Res> {
  __$BookingScheduleModelCopyWithImpl(
      _BookingScheduleModel _value, $Res Function(_BookingScheduleModel) _then)
      : super(_value, (v) => _then(v as _BookingScheduleModel));

  @override
  _BookingScheduleModel get _value => super._value as _BookingScheduleModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? resources = freezed,
  }) {
    return _then(_BookingScheduleModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      resources: resources == freezed
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<BookingResourceModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookingScheduleModel implements _BookingScheduleModel {
  const _$_BookingScheduleModel(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'resources') this.resources});

  factory _$_BookingScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookingScheduleModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'resources')
  final List<BookingResourceModel>? resources;

  @override
  String toString() {
    return 'BookingScheduleModel(id: $id, date: $date, resources: $resources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookingScheduleModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.resources, resources));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(resources));

  @JsonKey(ignore: true)
  @override
  _$BookingScheduleModelCopyWith<_BookingScheduleModel> get copyWith =>
      __$BookingScheduleModelCopyWithImpl<_BookingScheduleModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookingScheduleModelToJson(this);
  }
}

abstract class _BookingScheduleModel implements BookingScheduleModel {
  const factory _BookingScheduleModel(
          {@JsonKey(name: '_id') String? id,
          @JsonKey(name: 'date') String? date,
          @JsonKey(name: 'resources') List<BookingResourceModel>? resources}) =
      _$_BookingScheduleModel;

  factory _BookingScheduleModel.fromJson(Map<String, dynamic> json) =
      _$_BookingScheduleModel.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'resources')
  List<BookingResourceModel>? get resources;
  @override
  @JsonKey(ignore: true)
  _$BookingScheduleModelCopyWith<_BookingScheduleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
