// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booking_resource_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingResourceModel _$BookingResourceModelFromJson(Map<String, dynamic> json) {
  return _BookingResourceModel.fromJson(json);
}

/// @nodoc
class _$BookingResourceModelTearOff {
  const _$BookingResourceModelTearOff();

  _BookingResourceModel call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'timeslots') List<BookingTimeslotModel>? timeslots}) {
    return _BookingResourceModel(
      id: id,
      timeslots: timeslots,
    );
  }

  BookingResourceModel fromJson(Map<String, Object?> json) {
    return BookingResourceModel.fromJson(json);
  }
}

/// @nodoc
const $BookingResourceModel = _$BookingResourceModelTearOff();

/// @nodoc
mixin _$BookingResourceModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'timeslots')
  List<BookingTimeslotModel>? get timeslots =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingResourceModelCopyWith<BookingResourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingResourceModelCopyWith<$Res> {
  factory $BookingResourceModelCopyWith(BookingResourceModel value,
          $Res Function(BookingResourceModel) then) =
      _$BookingResourceModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'timeslots') List<BookingTimeslotModel>? timeslots});
}

/// @nodoc
class _$BookingResourceModelCopyWithImpl<$Res>
    implements $BookingResourceModelCopyWith<$Res> {
  _$BookingResourceModelCopyWithImpl(this._value, this._then);

  final BookingResourceModel _value;
  // ignore: unused_field
  final $Res Function(BookingResourceModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? timeslots = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      timeslots: timeslots == freezed
          ? _value.timeslots
          : timeslots // ignore: cast_nullable_to_non_nullable
              as List<BookingTimeslotModel>?,
    ));
  }
}

/// @nodoc
abstract class _$BookingResourceModelCopyWith<$Res>
    implements $BookingResourceModelCopyWith<$Res> {
  factory _$BookingResourceModelCopyWith(_BookingResourceModel value,
          $Res Function(_BookingResourceModel) then) =
      __$BookingResourceModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'timeslots') List<BookingTimeslotModel>? timeslots});
}

/// @nodoc
class __$BookingResourceModelCopyWithImpl<$Res>
    extends _$BookingResourceModelCopyWithImpl<$Res>
    implements _$BookingResourceModelCopyWith<$Res> {
  __$BookingResourceModelCopyWithImpl(
      _BookingResourceModel _value, $Res Function(_BookingResourceModel) _then)
      : super(_value, (v) => _then(v as _BookingResourceModel));

  @override
  _BookingResourceModel get _value => super._value as _BookingResourceModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? timeslots = freezed,
  }) {
    return _then(_BookingResourceModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      timeslots: timeslots == freezed
          ? _value.timeslots
          : timeslots // ignore: cast_nullable_to_non_nullable
              as List<BookingTimeslotModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookingResourceModel implements _BookingResourceModel {
  const _$_BookingResourceModel(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'timeslots') this.timeslots});

  factory _$_BookingResourceModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookingResourceModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'timeslots')
  final List<BookingTimeslotModel>? timeslots;

  @override
  String toString() {
    return 'BookingResourceModel(id: $id, timeslots: $timeslots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookingResourceModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.timeslots, timeslots));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(timeslots));

  @JsonKey(ignore: true)
  @override
  _$BookingResourceModelCopyWith<_BookingResourceModel> get copyWith =>
      __$BookingResourceModelCopyWithImpl<_BookingResourceModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookingResourceModelToJson(this);
  }
}

abstract class _BookingResourceModel implements BookingResourceModel {
  const factory _BookingResourceModel(
          {@JsonKey(name: '_id') String? id,
          @JsonKey(name: 'timeslots') List<BookingTimeslotModel>? timeslots}) =
      _$_BookingResourceModel;

  factory _BookingResourceModel.fromJson(Map<String, dynamic> json) =
      _$_BookingResourceModel.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'timeslots')
  List<BookingTimeslotModel>? get timeslots;
  @override
  @JsonKey(ignore: true)
  _$BookingResourceModelCopyWith<_BookingResourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
