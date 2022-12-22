// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventDataModel _$EventDataModelFromJson(Map<String, dynamic> json) {
  return _EventDataModel.fromJson(json);
}

/// @nodoc
class _$EventDataModelTearOff {
  const _$EventDataModelTearOff();

  _EventDataModel call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'rescheduleDate') String? rescheduleDate,
      @JsonKey(name: 'resources') List<ResourceModel>? resources}) {
    return _EventDataModel(
      id: id,
      date: date,
      rescheduleDate: rescheduleDate,
      resources: resources,
    );
  }

  EventDataModel fromJson(Map<String, Object?> json) {
    return EventDataModel.fromJson(json);
  }
}

/// @nodoc
const $EventDataModel = _$EventDataModelTearOff();

/// @nodoc
mixin _$EventDataModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'rescheduleDate')
  String? get rescheduleDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'resources')
  List<ResourceModel>? get resources => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDataModelCopyWith<EventDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDataModelCopyWith<$Res> {
  factory $EventDataModelCopyWith(
          EventDataModel value, $Res Function(EventDataModel) then) =
      _$EventDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'rescheduleDate') String? rescheduleDate,
      @JsonKey(name: 'resources') List<ResourceModel>? resources});
}

/// @nodoc
class _$EventDataModelCopyWithImpl<$Res>
    implements $EventDataModelCopyWith<$Res> {
  _$EventDataModelCopyWithImpl(this._value, this._then);

  final EventDataModel _value;
  // ignore: unused_field
  final $Res Function(EventDataModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? rescheduleDate = freezed,
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
      rescheduleDate: rescheduleDate == freezed
          ? _value.rescheduleDate
          : rescheduleDate // ignore: cast_nullable_to_non_nullable
              as String?,
      resources: resources == freezed
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<ResourceModel>?,
    ));
  }
}

/// @nodoc
abstract class _$EventDataModelCopyWith<$Res>
    implements $EventDataModelCopyWith<$Res> {
  factory _$EventDataModelCopyWith(
          _EventDataModel value, $Res Function(_EventDataModel) then) =
      __$EventDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'rescheduleDate') String? rescheduleDate,
      @JsonKey(name: 'resources') List<ResourceModel>? resources});
}

/// @nodoc
class __$EventDataModelCopyWithImpl<$Res>
    extends _$EventDataModelCopyWithImpl<$Res>
    implements _$EventDataModelCopyWith<$Res> {
  __$EventDataModelCopyWithImpl(
      _EventDataModel _value, $Res Function(_EventDataModel) _then)
      : super(_value, (v) => _then(v as _EventDataModel));

  @override
  _EventDataModel get _value => super._value as _EventDataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? rescheduleDate = freezed,
    Object? resources = freezed,
  }) {
    return _then(_EventDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      rescheduleDate: rescheduleDate == freezed
          ? _value.rescheduleDate
          : rescheduleDate // ignore: cast_nullable_to_non_nullable
              as String?,
      resources: resources == freezed
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<ResourceModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventDataModel implements _EventDataModel {
  const _$_EventDataModel(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'rescheduleDate') this.rescheduleDate,
      @JsonKey(name: 'resources') this.resources});

  factory _$_EventDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventDataModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'rescheduleDate')
  final String? rescheduleDate;
  @override
  @JsonKey(name: 'resources')
  final List<ResourceModel>? resources;

  @override
  String toString() {
    return 'EventDataModel(id: $id, date: $date, rescheduleDate: $rescheduleDate, resources: $resources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventDataModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.rescheduleDate, rescheduleDate) &&
            const DeepCollectionEquality().equals(other.resources, resources));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(rescheduleDate),
      const DeepCollectionEquality().hash(resources));

  @JsonKey(ignore: true)
  @override
  _$EventDataModelCopyWith<_EventDataModel> get copyWith =>
      __$EventDataModelCopyWithImpl<_EventDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventDataModelToJson(this);
  }
}

abstract class _EventDataModel implements EventDataModel {
  const factory _EventDataModel(
          {@JsonKey(name: '_id') String? id,
          @JsonKey(name: 'date') String? date,
          @JsonKey(name: 'rescheduleDate') String? rescheduleDate,
          @JsonKey(name: 'resources') List<ResourceModel>? resources}) =
      _$_EventDataModel;

  factory _EventDataModel.fromJson(Map<String, dynamic> json) =
      _$_EventDataModel.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'rescheduleDate')
  String? get rescheduleDate;
  @override
  @JsonKey(name: 'resources')
  List<ResourceModel>? get resources;
  @override
  @JsonKey(ignore: true)
  _$EventDataModelCopyWith<_EventDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
