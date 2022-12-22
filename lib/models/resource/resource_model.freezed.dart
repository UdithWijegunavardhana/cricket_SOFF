// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resource_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResourceModel _$ResourceModelFromJson(Map<String, dynamic> json) {
  return _ResourceModel.fromJson(json);
}

/// @nodoc
class _$ResourceModelTearOff {
  const _$ResourceModelTearOff();

  _ResourceModel call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'resourceCategorieId') String? resourceCategorieId,
      @JsonKey(name: 'resourceCategorieName') String? resourceCategorieName,
      @JsonKey(name: 'code') String? code,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'subResourceList') List<SubResourceModel>? subResourceList,
      @JsonKey(name: 'timeslots') List<TimeSlotModel>? timeslots}) {
    return _ResourceModel(
      id: id,
      resourceCategorieId: resourceCategorieId,
      resourceCategorieName: resourceCategorieName,
      code: code,
      description: description,
      subResourceList: subResourceList,
      timeslots: timeslots,
    );
  }

  ResourceModel fromJson(Map<String, Object?> json) {
    return ResourceModel.fromJson(json);
  }
}

/// @nodoc
const $ResourceModel = _$ResourceModelTearOff();

/// @nodoc
mixin _$ResourceModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'resourceCategorieId')
  String? get resourceCategorieId => throw _privateConstructorUsedError;
  @JsonKey(name: 'resourceCategorieName')
  String? get resourceCategorieName => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'subResourceList')
  List<SubResourceModel>? get subResourceList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'timeslots')
  List<TimeSlotModel>? get timeslots => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResourceModelCopyWith<ResourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceModelCopyWith<$Res> {
  factory $ResourceModelCopyWith(
          ResourceModel value, $Res Function(ResourceModel) then) =
      _$ResourceModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'resourceCategorieId') String? resourceCategorieId,
      @JsonKey(name: 'resourceCategorieName') String? resourceCategorieName,
      @JsonKey(name: 'code') String? code,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'subResourceList') List<SubResourceModel>? subResourceList,
      @JsonKey(name: 'timeslots') List<TimeSlotModel>? timeslots});
}

/// @nodoc
class _$ResourceModelCopyWithImpl<$Res>
    implements $ResourceModelCopyWith<$Res> {
  _$ResourceModelCopyWithImpl(this._value, this._then);

  final ResourceModel _value;
  // ignore: unused_field
  final $Res Function(ResourceModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? resourceCategorieId = freezed,
    Object? resourceCategorieName = freezed,
    Object? code = freezed,
    Object? description = freezed,
    Object? subResourceList = freezed,
    Object? timeslots = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceCategorieId: resourceCategorieId == freezed
          ? _value.resourceCategorieId
          : resourceCategorieId // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceCategorieName: resourceCategorieName == freezed
          ? _value.resourceCategorieName
          : resourceCategorieName // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      subResourceList: subResourceList == freezed
          ? _value.subResourceList
          : subResourceList // ignore: cast_nullable_to_non_nullable
              as List<SubResourceModel>?,
      timeslots: timeslots == freezed
          ? _value.timeslots
          : timeslots // ignore: cast_nullable_to_non_nullable
              as List<TimeSlotModel>?,
    ));
  }
}

/// @nodoc
abstract class _$ResourceModelCopyWith<$Res>
    implements $ResourceModelCopyWith<$Res> {
  factory _$ResourceModelCopyWith(
          _ResourceModel value, $Res Function(_ResourceModel) then) =
      __$ResourceModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'resourceCategorieId') String? resourceCategorieId,
      @JsonKey(name: 'resourceCategorieName') String? resourceCategorieName,
      @JsonKey(name: 'code') String? code,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'subResourceList') List<SubResourceModel>? subResourceList,
      @JsonKey(name: 'timeslots') List<TimeSlotModel>? timeslots});
}

/// @nodoc
class __$ResourceModelCopyWithImpl<$Res>
    extends _$ResourceModelCopyWithImpl<$Res>
    implements _$ResourceModelCopyWith<$Res> {
  __$ResourceModelCopyWithImpl(
      _ResourceModel _value, $Res Function(_ResourceModel) _then)
      : super(_value, (v) => _then(v as _ResourceModel));

  @override
  _ResourceModel get _value => super._value as _ResourceModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? resourceCategorieId = freezed,
    Object? resourceCategorieName = freezed,
    Object? code = freezed,
    Object? description = freezed,
    Object? subResourceList = freezed,
    Object? timeslots = freezed,
  }) {
    return _then(_ResourceModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceCategorieId: resourceCategorieId == freezed
          ? _value.resourceCategorieId
          : resourceCategorieId // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceCategorieName: resourceCategorieName == freezed
          ? _value.resourceCategorieName
          : resourceCategorieName // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      subResourceList: subResourceList == freezed
          ? _value.subResourceList
          : subResourceList // ignore: cast_nullable_to_non_nullable
              as List<SubResourceModel>?,
      timeslots: timeslots == freezed
          ? _value.timeslots
          : timeslots // ignore: cast_nullable_to_non_nullable
              as List<TimeSlotModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResourceModel implements _ResourceModel {
  const _$_ResourceModel(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'resourceCategorieId') this.resourceCategorieId,
      @JsonKey(name: 'resourceCategorieName') this.resourceCategorieName,
      @JsonKey(name: 'code') this.code,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'subResourceList') this.subResourceList,
      @JsonKey(name: 'timeslots') this.timeslots});

  factory _$_ResourceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResourceModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'resourceCategorieId')
  final String? resourceCategorieId;
  @override
  @JsonKey(name: 'resourceCategorieName')
  final String? resourceCategorieName;
  @override
  @JsonKey(name: 'code')
  final String? code;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'subResourceList')
  final List<SubResourceModel>? subResourceList;
  @override
  @JsonKey(name: 'timeslots')
  final List<TimeSlotModel>? timeslots;

  @override
  String toString() {
    return 'ResourceModel(id: $id, resourceCategorieId: $resourceCategorieId, resourceCategorieName: $resourceCategorieName, code: $code, description: $description, subResourceList: $subResourceList, timeslots: $timeslots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResourceModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.resourceCategorieId, resourceCategorieId) &&
            const DeepCollectionEquality()
                .equals(other.resourceCategorieName, resourceCategorieName) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.subResourceList, subResourceList) &&
            const DeepCollectionEquality().equals(other.timeslots, timeslots));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(resourceCategorieId),
      const DeepCollectionEquality().hash(resourceCategorieName),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(subResourceList),
      const DeepCollectionEquality().hash(timeslots));

  @JsonKey(ignore: true)
  @override
  _$ResourceModelCopyWith<_ResourceModel> get copyWith =>
      __$ResourceModelCopyWithImpl<_ResourceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResourceModelToJson(this);
  }
}

abstract class _ResourceModel implements ResourceModel {
  const factory _ResourceModel(
      {@JsonKey(name: '_id')
          String? id,
      @JsonKey(name: 'resourceCategorieId')
          String? resourceCategorieId,
      @JsonKey(name: 'resourceCategorieName')
          String? resourceCategorieName,
      @JsonKey(name: 'code')
          String? code,
      @JsonKey(name: 'description')
          String? description,
      @JsonKey(name: 'subResourceList')
          List<SubResourceModel>? subResourceList,
      @JsonKey(name: 'timeslots')
          List<TimeSlotModel>? timeslots}) = _$_ResourceModel;

  factory _ResourceModel.fromJson(Map<String, dynamic> json) =
      _$_ResourceModel.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'resourceCategorieId')
  String? get resourceCategorieId;
  @override
  @JsonKey(name: 'resourceCategorieName')
  String? get resourceCategorieName;
  @override
  @JsonKey(name: 'code')
  String? get code;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'subResourceList')
  List<SubResourceModel>? get subResourceList;
  @override
  @JsonKey(name: 'timeslots')
  List<TimeSlotModel>? get timeslots;
  @override
  @JsonKey(ignore: true)
  _$ResourceModelCopyWith<_ResourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
