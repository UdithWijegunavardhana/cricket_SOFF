// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booking_timeslot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingTimeslotModel _$BookingTimeslotModelFromJson(Map<String, dynamic> json) {
  return _BookingTimeslotModel.fromJson(json);
}

/// @nodoc
class _$BookingTimeslotModelTearOff {
  const _$BookingTimeslotModelTearOff();

  _BookingTimeslotModel call(
      {@JsonKey(name: 'startTime') String? startTime,
      @JsonKey(name: 'endTime') String? endTime,
      @JsonKey(name: 'customerId') String? customerId,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'status') BookingTimeSlotStatus? status,
      @JsonKey(name: 'isReschedule') String? isReschedule,
      @JsonKey(name: 'isSendEmail') BookingEmailStatus? isSendEmail,
      @JsonKey(name: 'createdDateTime') String? createdDateTime}) {
    return _BookingTimeslotModel(
      startTime: startTime,
      endTime: endTime,
      customerId: customerId,
      comment: comment,
      status: status,
      isReschedule: isReschedule,
      isSendEmail: isSendEmail,
      createdDateTime: createdDateTime,
    );
  }

  BookingTimeslotModel fromJson(Map<String, Object?> json) {
    return BookingTimeslotModel.fromJson(json);
  }
}

/// @nodoc
const $BookingTimeslotModel = _$BookingTimeslotModelTearOff();

/// @nodoc
mixin _$BookingTimeslotModel {
  @JsonKey(name: 'startTime')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'endTime')
  String? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'customerId')
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  BookingTimeSlotStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isReschedule')
  String? get isReschedule => throw _privateConstructorUsedError;
  @JsonKey(name: 'isSendEmail')
  BookingEmailStatus? get isSendEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDateTime')
  String? get createdDateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingTimeslotModelCopyWith<BookingTimeslotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingTimeslotModelCopyWith<$Res> {
  factory $BookingTimeslotModelCopyWith(BookingTimeslotModel value,
          $Res Function(BookingTimeslotModel) then) =
      _$BookingTimeslotModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'startTime') String? startTime,
      @JsonKey(name: 'endTime') String? endTime,
      @JsonKey(name: 'customerId') String? customerId,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'status') BookingTimeSlotStatus? status,
      @JsonKey(name: 'isReschedule') String? isReschedule,
      @JsonKey(name: 'isSendEmail') BookingEmailStatus? isSendEmail,
      @JsonKey(name: 'createdDateTime') String? createdDateTime});
}

/// @nodoc
class _$BookingTimeslotModelCopyWithImpl<$Res>
    implements $BookingTimeslotModelCopyWith<$Res> {
  _$BookingTimeslotModelCopyWithImpl(this._value, this._then);

  final BookingTimeslotModel _value;
  // ignore: unused_field
  final $Res Function(BookingTimeslotModel) _then;

  @override
  $Res call({
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? customerId = freezed,
    Object? comment = freezed,
    Object? status = freezed,
    Object? isReschedule = freezed,
    Object? isSendEmail = freezed,
    Object? createdDateTime = freezed,
  }) {
    return _then(_value.copyWith(
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookingTimeSlotStatus?,
      isReschedule: isReschedule == freezed
          ? _value.isReschedule
          : isReschedule // ignore: cast_nullable_to_non_nullable
              as String?,
      isSendEmail: isSendEmail == freezed
          ? _value.isSendEmail
          : isSendEmail // ignore: cast_nullable_to_non_nullable
              as BookingEmailStatus?,
      createdDateTime: createdDateTime == freezed
          ? _value.createdDateTime
          : createdDateTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BookingTimeslotModelCopyWith<$Res>
    implements $BookingTimeslotModelCopyWith<$Res> {
  factory _$BookingTimeslotModelCopyWith(_BookingTimeslotModel value,
          $Res Function(_BookingTimeslotModel) then) =
      __$BookingTimeslotModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'startTime') String? startTime,
      @JsonKey(name: 'endTime') String? endTime,
      @JsonKey(name: 'customerId') String? customerId,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'status') BookingTimeSlotStatus? status,
      @JsonKey(name: 'isReschedule') String? isReschedule,
      @JsonKey(name: 'isSendEmail') BookingEmailStatus? isSendEmail,
      @JsonKey(name: 'createdDateTime') String? createdDateTime});
}

/// @nodoc
class __$BookingTimeslotModelCopyWithImpl<$Res>
    extends _$BookingTimeslotModelCopyWithImpl<$Res>
    implements _$BookingTimeslotModelCopyWith<$Res> {
  __$BookingTimeslotModelCopyWithImpl(
      _BookingTimeslotModel _value, $Res Function(_BookingTimeslotModel) _then)
      : super(_value, (v) => _then(v as _BookingTimeslotModel));

  @override
  _BookingTimeslotModel get _value => super._value as _BookingTimeslotModel;

  @override
  $Res call({
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? customerId = freezed,
    Object? comment = freezed,
    Object? status = freezed,
    Object? isReschedule = freezed,
    Object? isSendEmail = freezed,
    Object? createdDateTime = freezed,
  }) {
    return _then(_BookingTimeslotModel(
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookingTimeSlotStatus?,
      isReschedule: isReschedule == freezed
          ? _value.isReschedule
          : isReschedule // ignore: cast_nullable_to_non_nullable
              as String?,
      isSendEmail: isSendEmail == freezed
          ? _value.isSendEmail
          : isSendEmail // ignore: cast_nullable_to_non_nullable
              as BookingEmailStatus?,
      createdDateTime: createdDateTime == freezed
          ? _value.createdDateTime
          : createdDateTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookingTimeslotModel implements _BookingTimeslotModel {
  const _$_BookingTimeslotModel(
      {@JsonKey(name: 'startTime') this.startTime,
      @JsonKey(name: 'endTime') this.endTime,
      @JsonKey(name: 'customerId') this.customerId,
      @JsonKey(name: 'comment') this.comment,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'isReschedule') this.isReschedule,
      @JsonKey(name: 'isSendEmail') this.isSendEmail,
      @JsonKey(name: 'createdDateTime') this.createdDateTime});

  factory _$_BookingTimeslotModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookingTimeslotModelFromJson(json);

  @override
  @JsonKey(name: 'startTime')
  final String? startTime;
  @override
  @JsonKey(name: 'endTime')
  final String? endTime;
  @override
  @JsonKey(name: 'customerId')
  final String? customerId;
  @override
  @JsonKey(name: 'comment')
  final String? comment;
  @override
  @JsonKey(name: 'status')
  final BookingTimeSlotStatus? status;
  @override
  @JsonKey(name: 'isReschedule')
  final String? isReschedule;
  @override
  @JsonKey(name: 'isSendEmail')
  final BookingEmailStatus? isSendEmail;
  @override
  @JsonKey(name: 'createdDateTime')
  final String? createdDateTime;

  @override
  String toString() {
    return 'BookingTimeslotModel(startTime: $startTime, endTime: $endTime, customerId: $customerId, comment: $comment, status: $status, isReschedule: $isReschedule, isSendEmail: $isSendEmail, createdDateTime: $createdDateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookingTimeslotModel &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.isReschedule, isReschedule) &&
            const DeepCollectionEquality()
                .equals(other.isSendEmail, isSendEmail) &&
            const DeepCollectionEquality()
                .equals(other.createdDateTime, createdDateTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(isReschedule),
      const DeepCollectionEquality().hash(isSendEmail),
      const DeepCollectionEquality().hash(createdDateTime));

  @JsonKey(ignore: true)
  @override
  _$BookingTimeslotModelCopyWith<_BookingTimeslotModel> get copyWith =>
      __$BookingTimeslotModelCopyWithImpl<_BookingTimeslotModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookingTimeslotModelToJson(this);
  }
}

abstract class _BookingTimeslotModel implements BookingTimeslotModel {
  const factory _BookingTimeslotModel(
          {@JsonKey(name: 'startTime') String? startTime,
          @JsonKey(name: 'endTime') String? endTime,
          @JsonKey(name: 'customerId') String? customerId,
          @JsonKey(name: 'comment') String? comment,
          @JsonKey(name: 'status') BookingTimeSlotStatus? status,
          @JsonKey(name: 'isReschedule') String? isReschedule,
          @JsonKey(name: 'isSendEmail') BookingEmailStatus? isSendEmail,
          @JsonKey(name: 'createdDateTime') String? createdDateTime}) =
      _$_BookingTimeslotModel;

  factory _BookingTimeslotModel.fromJson(Map<String, dynamic> json) =
      _$_BookingTimeslotModel.fromJson;

  @override
  @JsonKey(name: 'startTime')
  String? get startTime;
  @override
  @JsonKey(name: 'endTime')
  String? get endTime;
  @override
  @JsonKey(name: 'customerId')
  String? get customerId;
  @override
  @JsonKey(name: 'comment')
  String? get comment;
  @override
  @JsonKey(name: 'status')
  BookingTimeSlotStatus? get status;
  @override
  @JsonKey(name: 'isReschedule')
  String? get isReschedule;
  @override
  @JsonKey(name: 'isSendEmail')
  BookingEmailStatus? get isSendEmail;
  @override
  @JsonKey(name: 'createdDateTime')
  String? get createdDateTime;
  @override
  @JsonKey(ignore: true)
  _$BookingTimeslotModelCopyWith<_BookingTimeslotModel> get copyWith =>
      throw _privateConstructorUsedError;
}
