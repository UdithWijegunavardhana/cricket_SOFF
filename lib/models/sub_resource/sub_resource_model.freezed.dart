// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sub_resource_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubResourceModel _$SubResourceModelFromJson(Map<String, dynamic> json) {
  return _SubResourceModel.fromJson(json);
}

/// @nodoc
class _$SubResourceModelTearOff {
  const _$SubResourceModelTearOff();

  _SubResourceModel call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description}) {
    return _SubResourceModel(
      id: id,
      name: name,
      description: description,
    );
  }

  SubResourceModel fromJson(Map<String, Object?> json) {
    return SubResourceModel.fromJson(json);
  }
}

/// @nodoc
const $SubResourceModel = _$SubResourceModelTearOff();

/// @nodoc
mixin _$SubResourceModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubResourceModelCopyWith<SubResourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubResourceModelCopyWith<$Res> {
  factory $SubResourceModelCopyWith(
          SubResourceModel value, $Res Function(SubResourceModel) then) =
      _$SubResourceModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$SubResourceModelCopyWithImpl<$Res>
    implements $SubResourceModelCopyWith<$Res> {
  _$SubResourceModelCopyWithImpl(this._value, this._then);

  final SubResourceModel _value;
  // ignore: unused_field
  final $Res Function(SubResourceModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SubResourceModelCopyWith<$Res>
    implements $SubResourceModelCopyWith<$Res> {
  factory _$SubResourceModelCopyWith(
          _SubResourceModel value, $Res Function(_SubResourceModel) then) =
      __$SubResourceModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$SubResourceModelCopyWithImpl<$Res>
    extends _$SubResourceModelCopyWithImpl<$Res>
    implements _$SubResourceModelCopyWith<$Res> {
  __$SubResourceModelCopyWithImpl(
      _SubResourceModel _value, $Res Function(_SubResourceModel) _then)
      : super(_value, (v) => _then(v as _SubResourceModel));

  @override
  _SubResourceModel get _value => super._value as _SubResourceModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_SubResourceModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubResourceModel implements _SubResourceModel {
  const _$_SubResourceModel(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'description') this.description});

  factory _$_SubResourceModel.fromJson(Map<String, dynamic> json) =>
      _$$_SubResourceModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'SubResourceModel(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubResourceModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$SubResourceModelCopyWith<_SubResourceModel> get copyWith =>
      __$SubResourceModelCopyWithImpl<_SubResourceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubResourceModelToJson(this);
  }
}

abstract class _SubResourceModel implements SubResourceModel {
  const factory _SubResourceModel(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description}) = _$_SubResourceModel;

  factory _SubResourceModel.fromJson(Map<String, dynamic> json) =
      _$_SubResourceModel.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$SubResourceModelCopyWith<_SubResourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
