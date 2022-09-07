// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_and_auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsersAndAuthModel _$UsersAndAuthModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'registerUser':
      return RegisterUser.fromJson(json);
    case 'loginAuthToken':
      return LoginAuthToken.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UsersAndAuthModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$UsersAndAuthModelTearOff {
  const _$UsersAndAuthModelTearOff();

  RegisterUser registerUser(
      {required String firstName,
      required String lastName,
      required String email}) {
    return RegisterUser(
      firstName: firstName,
      lastName: lastName,
      email: email,
    );
  }

  LoginAuthToken loginAuthToken({required String token}) {
    return LoginAuthToken(
      token: token,
    );
  }

  UsersAndAuthModel fromJson(Map<String, Object?> json) {
    return UsersAndAuthModel.fromJson(json);
  }
}

/// @nodoc
const $UsersAndAuthModel = _$UsersAndAuthModelTearOff();

/// @nodoc
mixin _$UsersAndAuthModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName, String lastName, String email)
        registerUser,
    required TResult Function(String token) loginAuthToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email)?
        registerUser,
    TResult Function(String token)? loginAuthToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email)?
        registerUser,
    TResult Function(String token)? loginAuthToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(LoginAuthToken value) loginAuthToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginAuthToken value)? loginAuthToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginAuthToken value)? loginAuthToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersAndAuthModelCopyWith<$Res> {
  factory $UsersAndAuthModelCopyWith(
          UsersAndAuthModel value, $Res Function(UsersAndAuthModel) then) =
      _$UsersAndAuthModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersAndAuthModelCopyWithImpl<$Res>
    implements $UsersAndAuthModelCopyWith<$Res> {
  _$UsersAndAuthModelCopyWithImpl(this._value, this._then);

  final UsersAndAuthModel _value;
  // ignore: unused_field
  final $Res Function(UsersAndAuthModel) _then;
}

/// @nodoc
abstract class $RegisterUserCopyWith<$Res> {
  factory $RegisterUserCopyWith(
          RegisterUser value, $Res Function(RegisterUser) then) =
      _$RegisterUserCopyWithImpl<$Res>;
  $Res call({String firstName, String lastName, String email});
}

/// @nodoc
class _$RegisterUserCopyWithImpl<$Res>
    extends _$UsersAndAuthModelCopyWithImpl<$Res>
    implements $RegisterUserCopyWith<$Res> {
  _$RegisterUserCopyWithImpl(
      RegisterUser _value, $Res Function(RegisterUser) _then)
      : super(_value, (v) => _then(v as RegisterUser));

  @override
  RegisterUser get _value => super._value as RegisterUser;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
  }) {
    return _then(RegisterUser(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterUser implements RegisterUser {
  _$RegisterUser(
      {required this.firstName,
      required this.lastName,
      required this.email,
      String? $type})
      : $type = $type ?? 'registerUser';

  factory _$RegisterUser.fromJson(Map<String, dynamic> json) =>
      _$$RegisterUserFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UsersAndAuthModel.registerUser(firstName: $firstName, lastName: $lastName, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterUser &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $RegisterUserCopyWith<RegisterUser> get copyWith =>
      _$RegisterUserCopyWithImpl<RegisterUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName, String lastName, String email)
        registerUser,
    required TResult Function(String token) loginAuthToken,
  }) {
    return registerUser(firstName, lastName, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email)?
        registerUser,
    TResult Function(String token)? loginAuthToken,
  }) {
    return registerUser?.call(firstName, lastName, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email)?
        registerUser,
    TResult Function(String token)? loginAuthToken,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(firstName, lastName, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(LoginAuthToken value) loginAuthToken,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginAuthToken value)? loginAuthToken,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginAuthToken value)? loginAuthToken,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterUserToJson(this);
  }
}

abstract class RegisterUser implements UsersAndAuthModel {
  factory RegisterUser(
      {required String firstName,
      required String lastName,
      required String email}) = _$RegisterUser;

  factory RegisterUser.fromJson(Map<String, dynamic> json) =
      _$RegisterUser.fromJson;

  String get firstName;
  String get lastName;
  String get email;
  @JsonKey(ignore: true)
  $RegisterUserCopyWith<RegisterUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginAuthTokenCopyWith<$Res> {
  factory $LoginAuthTokenCopyWith(
          LoginAuthToken value, $Res Function(LoginAuthToken) then) =
      _$LoginAuthTokenCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$LoginAuthTokenCopyWithImpl<$Res>
    extends _$UsersAndAuthModelCopyWithImpl<$Res>
    implements $LoginAuthTokenCopyWith<$Res> {
  _$LoginAuthTokenCopyWithImpl(
      LoginAuthToken _value, $Res Function(LoginAuthToken) _then)
      : super(_value, (v) => _then(v as LoginAuthToken));

  @override
  LoginAuthToken get _value => super._value as LoginAuthToken;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(LoginAuthToken(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginAuthToken implements LoginAuthToken {
  _$LoginAuthToken({required this.token, String? $type})
      : $type = $type ?? 'loginAuthToken';

  factory _$LoginAuthToken.fromJson(Map<String, dynamic> json) =>
      _$$LoginAuthTokenFromJson(json);

  @override
  final String token;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UsersAndAuthModel.loginAuthToken(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginAuthToken &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  $LoginAuthTokenCopyWith<LoginAuthToken> get copyWith =>
      _$LoginAuthTokenCopyWithImpl<LoginAuthToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName, String lastName, String email)
        registerUser,
    required TResult Function(String token) loginAuthToken,
  }) {
    return loginAuthToken(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email)?
        registerUser,
    TResult Function(String token)? loginAuthToken,
  }) {
    return loginAuthToken?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email)?
        registerUser,
    TResult Function(String token)? loginAuthToken,
    required TResult orElse(),
  }) {
    if (loginAuthToken != null) {
      return loginAuthToken(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(LoginAuthToken value) loginAuthToken,
  }) {
    return loginAuthToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginAuthToken value)? loginAuthToken,
  }) {
    return loginAuthToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginAuthToken value)? loginAuthToken,
    required TResult orElse(),
  }) {
    if (loginAuthToken != null) {
      return loginAuthToken(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginAuthTokenToJson(this);
  }
}

abstract class LoginAuthToken implements UsersAndAuthModel {
  factory LoginAuthToken({required String token}) = _$LoginAuthToken;

  factory LoginAuthToken.fromJson(Map<String, dynamic> json) =
      _$LoginAuthToken.fromJson;

  String get token;
  @JsonKey(ignore: true)
  $LoginAuthTokenCopyWith<LoginAuthToken> get copyWith =>
      throw _privateConstructorUsedError;
}
