// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'time_slot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeSlotModel _$TimeSlotModelFromJson(Map<String, dynamic> json) {
  return _TimeSlotModel.fromJson(json);
}

/// @nodoc
class _$TimeSlotModelTearOff {
  const _$TimeSlotModelTearOff();

  _TimeSlotModel call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'startTime') String? startTime,
      @JsonKey(name: 'endTime') String? endTime,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'customerId') String? customerId,
      @JsonKey(name: 'subResourceList') List<SubResourceModel>? subResourceList,
      @JsonKey(name: 'customer') CustomerModel? customer}) {
    return _TimeSlotModel(
      id: id,
      startTime: startTime,
      endTime: endTime,
      comment: comment,
      status: status,
      customerId: customerId,
      subResourceList: subResourceList,
      customer: customer,
    );
  }

  TimeSlotModel fromJson(Map<String, Object?> json) {
    return TimeSlotModel.fromJson(json);
  }
}

/// @nodoc
const $TimeSlotModel = _$TimeSlotModelTearOff();

/// @nodoc
mixin _$TimeSlotModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'startTime')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'endTime')
  String? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'customerId')
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'subResourceList')
  List<SubResourceModel>? get subResourceList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'customer')
  CustomerModel? get customer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeSlotModelCopyWith<TimeSlotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSlotModelCopyWith<$Res> {
  factory $TimeSlotModelCopyWith(
          TimeSlotModel value, $Res Function(TimeSlotModel) then) =
      _$TimeSlotModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'startTime') String? startTime,
      @JsonKey(name: 'endTime') String? endTime,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'customerId') String? customerId,
      @JsonKey(name: 'subResourceList') List<SubResourceModel>? subResourceList,
      @JsonKey(name: 'customer') CustomerModel? customer});

  $CustomerModelCopyWith<$Res>? get customer;
}

/// @nodoc
class _$TimeSlotModelCopyWithImpl<$Res>
    implements $TimeSlotModelCopyWith<$Res> {
  _$TimeSlotModelCopyWithImpl(this._value, this._then);

  final TimeSlotModel _value;
  // ignore: unused_field
  final $Res Function(TimeSlotModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? comment = freezed,
    Object? status = freezed,
    Object? customerId = freezed,
    Object? subResourceList = freezed,
    Object? customer = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      subResourceList: subResourceList == freezed
          ? _value.subResourceList
          : subResourceList // ignore: cast_nullable_to_non_nullable
              as List<SubResourceModel>?,
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerModel?,
    ));
  }

  @override
  $CustomerModelCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerModelCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }
}

/// @nodoc
abstract class _$TimeSlotModelCopyWith<$Res>
    implements $TimeSlotModelCopyWith<$Res> {
  factory _$TimeSlotModelCopyWith(
          _TimeSlotModel value, $Res Function(_TimeSlotModel) then) =
      __$TimeSlotModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'startTime') String? startTime,
      @JsonKey(name: 'endTime') String? endTime,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'customerId') String? customerId,
      @JsonKey(name: 'subResourceList') List<SubResourceModel>? subResourceList,
      @JsonKey(name: 'customer') CustomerModel? customer});

  @override
  $CustomerModelCopyWith<$Res>? get customer;
}

/// @nodoc
class __$TimeSlotModelCopyWithImpl<$Res>
    extends _$TimeSlotModelCopyWithImpl<$Res>
    implements _$TimeSlotModelCopyWith<$Res> {
  __$TimeSlotModelCopyWithImpl(
      _TimeSlotModel _value, $Res Function(_TimeSlotModel) _then)
      : super(_value, (v) => _then(v as _TimeSlotModel));

  @override
  _TimeSlotModel get _value => super._value as _TimeSlotModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? comment = freezed,
    Object? status = freezed,
    Object? customerId = freezed,
    Object? subResourceList = freezed,
    Object? customer = freezed,
  }) {
    return _then(_TimeSlotModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      subResourceList: subResourceList == freezed
          ? _value.subResourceList
          : subResourceList // ignore: cast_nullable_to_non_nullable
              as List<SubResourceModel>?,
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeSlotModel implements _TimeSlotModel {
  const _$_TimeSlotModel(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'startTime') this.startTime,
      @JsonKey(name: 'endTime') this.endTime,
      @JsonKey(name: 'comment') this.comment,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'customerId') this.customerId,
      @JsonKey(name: 'subResourceList') this.subResourceList,
      @JsonKey(name: 'customer') this.customer});

  factory _$_TimeSlotModel.fromJson(Map<String, dynamic> json) =>
      _$$_TimeSlotModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'startTime')
  final String? startTime;
  @override
  @JsonKey(name: 'endTime')
  final String? endTime;
  @override
  @JsonKey(name: 'comment')
  final String? comment;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'customerId')
  final String? customerId;
  @override
  @JsonKey(name: 'subResourceList')
  final List<SubResourceModel>? subResourceList;
  @override
  @JsonKey(name: 'customer')
  final CustomerModel? customer;

  @override
  String toString() {
    return 'TimeSlotModel(id: $id, startTime: $startTime, endTime: $endTime, comment: $comment, status: $status, customerId: $customerId, subResourceList: $subResourceList, customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimeSlotModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality()
                .equals(other.subResourceList, subResourceList) &&
            const DeepCollectionEquality().equals(other.customer, customer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(subResourceList),
      const DeepCollectionEquality().hash(customer));

  @JsonKey(ignore: true)
  @override
  _$TimeSlotModelCopyWith<_TimeSlotModel> get copyWith =>
      __$TimeSlotModelCopyWithImpl<_TimeSlotModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeSlotModelToJson(this);
  }
}

abstract class _TimeSlotModel implements TimeSlotModel {
  const factory _TimeSlotModel(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'startTime') String? startTime,
      @JsonKey(name: 'endTime') String? endTime,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'customerId') String? customerId,
      @JsonKey(name: 'subResourceList') List<SubResourceModel>? subResourceList,
      @JsonKey(name: 'customer') CustomerModel? customer}) = _$_TimeSlotModel;

  factory _TimeSlotModel.fromJson(Map<String, dynamic> json) =
      _$_TimeSlotModel.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'startTime')
  String? get startTime;
  @override
  @JsonKey(name: 'endTime')
  String? get endTime;
  @override
  @JsonKey(name: 'comment')
  String? get comment;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'customerId')
  String? get customerId;
  @override
  @JsonKey(name: 'subResourceList')
  List<SubResourceModel>? get subResourceList;
  @override
  @JsonKey(name: 'customer')
  CustomerModel? get customer;
  @override
  @JsonKey(ignore: true)
  _$TimeSlotModelCopyWith<_TimeSlotModel> get copyWith =>
      throw _privateConstructorUsedError;
}
