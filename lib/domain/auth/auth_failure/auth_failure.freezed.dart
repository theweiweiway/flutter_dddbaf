// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AuthFailure _$AuthFailureFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'userNotFound':
      return UserNotFound.fromJson(json);
    case 'userDisabled':
      return UserDisabled.fromJson(json);
    case 'wrongPassword':
      return WrongPassword.fromJson(json);
    case 'weakPassword':
      return WeakPassword.fromJson(json);
    case 'emailAlreadyInUse':
      return EmailAlreadyInUse.fromJson(json);
    case 'usernameAlreadyInUse':
      return UsernameAlreadyInUse.fromJson(json);
    case 'invalidEmail':
      return InvalidEmail.fromJson(json);
    case 'expiredActionCode':
      return ExpiredActionCode.fromJson(json);
    case 'invalidActionCode':
      return InvalidActionCode.fromJson(json);
    case 'internalServerError':
      return InternalServerError.fromJson(json);
    case 'genericError':
      return GenericError.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  UserNotFound userNotFound() {
    return const UserNotFound();
  }

// ignore: unused_element
  UserDisabled userDisabled() {
    return const UserDisabled();
  }

// ignore: unused_element
  WrongPassword wrongPassword() {
    return const WrongPassword();
  }

// ignore: unused_element
  WeakPassword weakPassword() {
    return const WeakPassword();
  }

// ignore: unused_element
  EmailAlreadyInUse emailAlreadyInUse() {
    return const EmailAlreadyInUse();
  }

// ignore: unused_element
  UsernameAlreadyInUse usernameAlreadyInUse() {
    return const UsernameAlreadyInUse();
  }

// ignore: unused_element
  InvalidEmail invalidEmail() {
    return const InvalidEmail();
  }

// ignore: unused_element
  ExpiredActionCode expiredActionCode() {
    return const ExpiredActionCode();
  }

// ignore: unused_element
  InvalidActionCode invalidActionCode() {
    return const InvalidActionCode();
  }

// ignore: unused_element
  InternalServerError internalServerError() {
    return const InternalServerError();
  }

// ignore: unused_element
  GenericError genericError() {
    return const GenericError();
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNotFound(),
    @required Result userDisabled(),
    @required Result wrongPassword(),
    @required Result weakPassword(),
    @required Result emailAlreadyInUse(),
    @required Result usernameAlreadyInUse(),
    @required Result invalidEmail(),
    @required Result expiredActionCode(),
    @required Result invalidActionCode(),
    @required Result internalServerError(),
    @required Result genericError(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNotFound(),
    Result userDisabled(),
    Result wrongPassword(),
    Result weakPassword(),
    Result emailAlreadyInUse(),
    Result usernameAlreadyInUse(),
    Result invalidEmail(),
    Result expiredActionCode(),
    Result invalidActionCode(),
    Result internalServerError(),
    Result genericError(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNotFound(UserNotFound value),
    @required Result userDisabled(UserDisabled value),
    @required Result wrongPassword(WrongPassword value),
    @required Result weakPassword(WeakPassword value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result expiredActionCode(ExpiredActionCode value),
    @required Result invalidActionCode(InvalidActionCode value),
    @required Result internalServerError(InternalServerError value),
    @required Result genericError(GenericError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(UserNotFound value),
    Result userDisabled(UserDisabled value),
    Result wrongPassword(WrongPassword value),
    Result weakPassword(WeakPassword value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result invalidEmail(InvalidEmail value),
    Result expiredActionCode(ExpiredActionCode value),
    Result invalidActionCode(InvalidActionCode value),
    Result internalServerError(InternalServerError value),
    Result genericError(GenericError value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class $UserNotFoundCopyWith<$Res> {
  factory $UserNotFoundCopyWith(
          UserNotFound value, $Res Function(UserNotFound) then) =
      _$UserNotFoundCopyWithImpl<$Res>;
}

class _$UserNotFoundCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $UserNotFoundCopyWith<$Res> {
  _$UserNotFoundCopyWithImpl(
      UserNotFound _value, $Res Function(UserNotFound) _then)
      : super(_value, (v) => _then(v as UserNotFound));

  @override
  UserNotFound get _value => super._value as UserNotFound;
}

@JsonSerializable()
class _$UserNotFound extends UserNotFound {
  const _$UserNotFound() : super._();

  factory _$UserNotFound.fromJson(Map<String, dynamic> json) =>
      _$_$UserNotFoundFromJson(json);

  @override
  String toString() {
    return 'AuthFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNotFound(),
    @required Result userDisabled(),
    @required Result wrongPassword(),
    @required Result weakPassword(),
    @required Result emailAlreadyInUse(),
    @required Result usernameAlreadyInUse(),
    @required Result invalidEmail(),
    @required Result expiredActionCode(),
    @required Result invalidActionCode(),
    @required Result internalServerError(),
    @required Result genericError(),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNotFound(),
    Result userDisabled(),
    Result wrongPassword(),
    Result weakPassword(),
    Result emailAlreadyInUse(),
    Result usernameAlreadyInUse(),
    Result invalidEmail(),
    Result expiredActionCode(),
    Result invalidActionCode(),
    Result internalServerError(),
    Result genericError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNotFound(UserNotFound value),
    @required Result userDisabled(UserDisabled value),
    @required Result wrongPassword(WrongPassword value),
    @required Result weakPassword(WeakPassword value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result expiredActionCode(ExpiredActionCode value),
    @required Result invalidActionCode(InvalidActionCode value),
    @required Result internalServerError(InternalServerError value),
    @required Result genericError(GenericError value),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(UserNotFound value),
    Result userDisabled(UserDisabled value),
    Result wrongPassword(WrongPassword value),
    Result weakPassword(WeakPassword value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result invalidEmail(InvalidEmail value),
    Result expiredActionCode(ExpiredActionCode value),
    Result invalidActionCode(InvalidActionCode value),
    Result internalServerError(InternalServerError value),
    Result genericError(GenericError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UserNotFoundToJson(this)..['runtimeType'] = 'userNotFound';
  }
}

abstract class UserNotFound extends AuthFailure {
  const UserNotFound._() : super._();
  const factory UserNotFound() = _$UserNotFound;

  factory UserNotFound.fromJson(Map<String, dynamic> json) =
      _$UserNotFound.fromJson;
}

abstract class $UserDisabledCopyWith<$Res> {
  factory $UserDisabledCopyWith(
          UserDisabled value, $Res Function(UserDisabled) then) =
      _$UserDisabledCopyWithImpl<$Res>;
}

class _$UserDisabledCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $UserDisabledCopyWith<$Res> {
  _$UserDisabledCopyWithImpl(
      UserDisabled _value, $Res Function(UserDisabled) _then)
      : super(_value, (v) => _then(v as UserDisabled));

  @override
  UserDisabled get _value => super._value as UserDisabled;
}

@JsonSerializable()
class _$UserDisabled extends UserDisabled {
  const _$UserDisabled() : super._();

  factory _$UserDisabled.fromJson(Map<String, dynamic> json) =>
      _$_$UserDisabledFromJson(json);

  @override
  String toString() {
    return 'AuthFailure.userDisabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserDisabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNotFound(),
    @required Result userDisabled(),
    @required Result wrongPassword(),
    @required Result weakPassword(),
    @required Result emailAlreadyInUse(),
    @required Result usernameAlreadyInUse(),
    @required Result invalidEmail(),
    @required Result expiredActionCode(),
    @required Result invalidActionCode(),
    @required Result internalServerError(),
    @required Result genericError(),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return userDisabled();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNotFound(),
    Result userDisabled(),
    Result wrongPassword(),
    Result weakPassword(),
    Result emailAlreadyInUse(),
    Result usernameAlreadyInUse(),
    Result invalidEmail(),
    Result expiredActionCode(),
    Result invalidActionCode(),
    Result internalServerError(),
    Result genericError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userDisabled != null) {
      return userDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNotFound(UserNotFound value),
    @required Result userDisabled(UserDisabled value),
    @required Result wrongPassword(WrongPassword value),
    @required Result weakPassword(WeakPassword value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result expiredActionCode(ExpiredActionCode value),
    @required Result invalidActionCode(InvalidActionCode value),
    @required Result internalServerError(InternalServerError value),
    @required Result genericError(GenericError value),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return userDisabled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(UserNotFound value),
    Result userDisabled(UserDisabled value),
    Result wrongPassword(WrongPassword value),
    Result weakPassword(WeakPassword value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result invalidEmail(InvalidEmail value),
    Result expiredActionCode(ExpiredActionCode value),
    Result invalidActionCode(InvalidActionCode value),
    Result internalServerError(InternalServerError value),
    Result genericError(GenericError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userDisabled != null) {
      return userDisabled(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UserDisabledToJson(this)..['runtimeType'] = 'userDisabled';
  }
}

abstract class UserDisabled extends AuthFailure {
  const UserDisabled._() : super._();
  const factory UserDisabled() = _$UserDisabled;

  factory UserDisabled.fromJson(Map<String, dynamic> json) =
      _$UserDisabled.fromJson;
}

abstract class $WrongPasswordCopyWith<$Res> {
  factory $WrongPasswordCopyWith(
          WrongPassword value, $Res Function(WrongPassword) then) =
      _$WrongPasswordCopyWithImpl<$Res>;
}

class _$WrongPasswordCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $WrongPasswordCopyWith<$Res> {
  _$WrongPasswordCopyWithImpl(
      WrongPassword _value, $Res Function(WrongPassword) _then)
      : super(_value, (v) => _then(v as WrongPassword));

  @override
  WrongPassword get _value => super._value as WrongPassword;
}

@JsonSerializable()
class _$WrongPassword extends WrongPassword {
  const _$WrongPassword() : super._();

  factory _$WrongPassword.fromJson(Map<String, dynamic> json) =>
      _$_$WrongPasswordFromJson(json);

  @override
  String toString() {
    return 'AuthFailure.wrongPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WrongPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNotFound(),
    @required Result userDisabled(),
    @required Result wrongPassword(),
    @required Result weakPassword(),
    @required Result emailAlreadyInUse(),
    @required Result usernameAlreadyInUse(),
    @required Result invalidEmail(),
    @required Result expiredActionCode(),
    @required Result invalidActionCode(),
    @required Result internalServerError(),
    @required Result genericError(),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return wrongPassword();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNotFound(),
    Result userDisabled(),
    Result wrongPassword(),
    Result weakPassword(),
    Result emailAlreadyInUse(),
    Result usernameAlreadyInUse(),
    Result invalidEmail(),
    Result expiredActionCode(),
    Result invalidActionCode(),
    Result internalServerError(),
    Result genericError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (wrongPassword != null) {
      return wrongPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNotFound(UserNotFound value),
    @required Result userDisabled(UserDisabled value),
    @required Result wrongPassword(WrongPassword value),
    @required Result weakPassword(WeakPassword value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result expiredActionCode(ExpiredActionCode value),
    @required Result invalidActionCode(InvalidActionCode value),
    @required Result internalServerError(InternalServerError value),
    @required Result genericError(GenericError value),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return wrongPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(UserNotFound value),
    Result userDisabled(UserDisabled value),
    Result wrongPassword(WrongPassword value),
    Result weakPassword(WeakPassword value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result invalidEmail(InvalidEmail value),
    Result expiredActionCode(ExpiredActionCode value),
    Result invalidActionCode(InvalidActionCode value),
    Result internalServerError(InternalServerError value),
    Result genericError(GenericError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (wrongPassword != null) {
      return wrongPassword(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$WrongPasswordToJson(this)..['runtimeType'] = 'wrongPassword';
  }
}

abstract class WrongPassword extends AuthFailure {
  const WrongPassword._() : super._();
  const factory WrongPassword() = _$WrongPassword;

  factory WrongPassword.fromJson(Map<String, dynamic> json) =
      _$WrongPassword.fromJson;
}

abstract class $WeakPasswordCopyWith<$Res> {
  factory $WeakPasswordCopyWith(
          WeakPassword value, $Res Function(WeakPassword) then) =
      _$WeakPasswordCopyWithImpl<$Res>;
}

class _$WeakPasswordCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $WeakPasswordCopyWith<$Res> {
  _$WeakPasswordCopyWithImpl(
      WeakPassword _value, $Res Function(WeakPassword) _then)
      : super(_value, (v) => _then(v as WeakPassword));

  @override
  WeakPassword get _value => super._value as WeakPassword;
}

@JsonSerializable()
class _$WeakPassword extends WeakPassword {
  const _$WeakPassword() : super._();

  factory _$WeakPassword.fromJson(Map<String, dynamic> json) =>
      _$_$WeakPasswordFromJson(json);

  @override
  String toString() {
    return 'AuthFailure.weakPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WeakPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNotFound(),
    @required Result userDisabled(),
    @required Result wrongPassword(),
    @required Result weakPassword(),
    @required Result emailAlreadyInUse(),
    @required Result usernameAlreadyInUse(),
    @required Result invalidEmail(),
    @required Result expiredActionCode(),
    @required Result invalidActionCode(),
    @required Result internalServerError(),
    @required Result genericError(),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return weakPassword();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNotFound(),
    Result userDisabled(),
    Result wrongPassword(),
    Result weakPassword(),
    Result emailAlreadyInUse(),
    Result usernameAlreadyInUse(),
    Result invalidEmail(),
    Result expiredActionCode(),
    Result invalidActionCode(),
    Result internalServerError(),
    Result genericError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (weakPassword != null) {
      return weakPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNotFound(UserNotFound value),
    @required Result userDisabled(UserDisabled value),
    @required Result wrongPassword(WrongPassword value),
    @required Result weakPassword(WeakPassword value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result expiredActionCode(ExpiredActionCode value),
    @required Result invalidActionCode(InvalidActionCode value),
    @required Result internalServerError(InternalServerError value),
    @required Result genericError(GenericError value),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return weakPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(UserNotFound value),
    Result userDisabled(UserDisabled value),
    Result wrongPassword(WrongPassword value),
    Result weakPassword(WeakPassword value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result invalidEmail(InvalidEmail value),
    Result expiredActionCode(ExpiredActionCode value),
    Result invalidActionCode(InvalidActionCode value),
    Result internalServerError(InternalServerError value),
    Result genericError(GenericError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (weakPassword != null) {
      return weakPassword(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$WeakPasswordToJson(this)..['runtimeType'] = 'weakPassword';
  }
}

abstract class WeakPassword extends AuthFailure {
  const WeakPassword._() : super._();
  const factory WeakPassword() = _$WeakPassword;

  factory WeakPassword.fromJson(Map<String, dynamic> json) =
      _$WeakPassword.fromJson;
}

abstract class $EmailAlreadyInUseCopyWith<$Res> {
  factory $EmailAlreadyInUseCopyWith(
          EmailAlreadyInUse value, $Res Function(EmailAlreadyInUse) then) =
      _$EmailAlreadyInUseCopyWithImpl<$Res>;
}

class _$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlreadyInUseCopyWith<$Res> {
  _$EmailAlreadyInUseCopyWithImpl(
      EmailAlreadyInUse _value, $Res Function(EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUse));

  @override
  EmailAlreadyInUse get _value => super._value as EmailAlreadyInUse;
}

@JsonSerializable()
class _$EmailAlreadyInUse extends EmailAlreadyInUse {
  const _$EmailAlreadyInUse() : super._();

  factory _$EmailAlreadyInUse.fromJson(Map<String, dynamic> json) =>
      _$_$EmailAlreadyInUseFromJson(json);

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNotFound(),
    @required Result userDisabled(),
    @required Result wrongPassword(),
    @required Result weakPassword(),
    @required Result emailAlreadyInUse(),
    @required Result usernameAlreadyInUse(),
    @required Result invalidEmail(),
    @required Result expiredActionCode(),
    @required Result invalidActionCode(),
    @required Result internalServerError(),
    @required Result genericError(),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNotFound(),
    Result userDisabled(),
    Result wrongPassword(),
    Result weakPassword(),
    Result emailAlreadyInUse(),
    Result usernameAlreadyInUse(),
    Result invalidEmail(),
    Result expiredActionCode(),
    Result invalidActionCode(),
    Result internalServerError(),
    Result genericError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNotFound(UserNotFound value),
    @required Result userDisabled(UserDisabled value),
    @required Result wrongPassword(WrongPassword value),
    @required Result weakPassword(WeakPassword value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result expiredActionCode(ExpiredActionCode value),
    @required Result invalidActionCode(InvalidActionCode value),
    @required Result internalServerError(InternalServerError value),
    @required Result genericError(GenericError value),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(UserNotFound value),
    Result userDisabled(UserDisabled value),
    Result wrongPassword(WrongPassword value),
    Result weakPassword(WeakPassword value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result invalidEmail(InvalidEmail value),
    Result expiredActionCode(ExpiredActionCode value),
    Result invalidActionCode(InvalidActionCode value),
    Result internalServerError(InternalServerError value),
    Result genericError(GenericError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$EmailAlreadyInUseToJson(this)
      ..['runtimeType'] = 'emailAlreadyInUse';
  }
}

abstract class EmailAlreadyInUse extends AuthFailure {
  const EmailAlreadyInUse._() : super._();
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;

  factory EmailAlreadyInUse.fromJson(Map<String, dynamic> json) =
      _$EmailAlreadyInUse.fromJson;
}

abstract class $UsernameAlreadyInUseCopyWith<$Res> {
  factory $UsernameAlreadyInUseCopyWith(UsernameAlreadyInUse value,
          $Res Function(UsernameAlreadyInUse) then) =
      _$UsernameAlreadyInUseCopyWithImpl<$Res>;
}

class _$UsernameAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $UsernameAlreadyInUseCopyWith<$Res> {
  _$UsernameAlreadyInUseCopyWithImpl(
      UsernameAlreadyInUse _value, $Res Function(UsernameAlreadyInUse) _then)
      : super(_value, (v) => _then(v as UsernameAlreadyInUse));

  @override
  UsernameAlreadyInUse get _value => super._value as UsernameAlreadyInUse;
}

@JsonSerializable()
class _$UsernameAlreadyInUse extends UsernameAlreadyInUse {
  const _$UsernameAlreadyInUse() : super._();

  factory _$UsernameAlreadyInUse.fromJson(Map<String, dynamic> json) =>
      _$_$UsernameAlreadyInUseFromJson(json);

  @override
  String toString() {
    return 'AuthFailure.usernameAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UsernameAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNotFound(),
    @required Result userDisabled(),
    @required Result wrongPassword(),
    @required Result weakPassword(),
    @required Result emailAlreadyInUse(),
    @required Result usernameAlreadyInUse(),
    @required Result invalidEmail(),
    @required Result expiredActionCode(),
    @required Result invalidActionCode(),
    @required Result internalServerError(),
    @required Result genericError(),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return usernameAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNotFound(),
    Result userDisabled(),
    Result wrongPassword(),
    Result weakPassword(),
    Result emailAlreadyInUse(),
    Result usernameAlreadyInUse(),
    Result invalidEmail(),
    Result expiredActionCode(),
    Result invalidActionCode(),
    Result internalServerError(),
    Result genericError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameAlreadyInUse != null) {
      return usernameAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNotFound(UserNotFound value),
    @required Result userDisabled(UserDisabled value),
    @required Result wrongPassword(WrongPassword value),
    @required Result weakPassword(WeakPassword value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result expiredActionCode(ExpiredActionCode value),
    @required Result invalidActionCode(InvalidActionCode value),
    @required Result internalServerError(InternalServerError value),
    @required Result genericError(GenericError value),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return usernameAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(UserNotFound value),
    Result userDisabled(UserDisabled value),
    Result wrongPassword(WrongPassword value),
    Result weakPassword(WeakPassword value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result invalidEmail(InvalidEmail value),
    Result expiredActionCode(ExpiredActionCode value),
    Result invalidActionCode(InvalidActionCode value),
    Result internalServerError(InternalServerError value),
    Result genericError(GenericError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameAlreadyInUse != null) {
      return usernameAlreadyInUse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UsernameAlreadyInUseToJson(this)
      ..['runtimeType'] = 'usernameAlreadyInUse';
  }
}

abstract class UsernameAlreadyInUse extends AuthFailure {
  const UsernameAlreadyInUse._() : super._();
  const factory UsernameAlreadyInUse() = _$UsernameAlreadyInUse;

  factory UsernameAlreadyInUse.fromJson(Map<String, dynamic> json) =
      _$UsernameAlreadyInUse.fromJson;
}

abstract class $InvalidEmailCopyWith<$Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail value, $Res Function(InvalidEmail) then) =
      _$InvalidEmailCopyWithImpl<$Res>;
}

class _$InvalidEmailCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailCopyWith<$Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail _value, $Res Function(InvalidEmail) _then)
      : super(_value, (v) => _then(v as InvalidEmail));

  @override
  InvalidEmail get _value => super._value as InvalidEmail;
}

@JsonSerializable()
class _$InvalidEmail extends InvalidEmail {
  const _$InvalidEmail() : super._();

  factory _$InvalidEmail.fromJson(Map<String, dynamic> json) =>
      _$_$InvalidEmailFromJson(json);

  @override
  String toString() {
    return 'AuthFailure.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNotFound(),
    @required Result userDisabled(),
    @required Result wrongPassword(),
    @required Result weakPassword(),
    @required Result emailAlreadyInUse(),
    @required Result usernameAlreadyInUse(),
    @required Result invalidEmail(),
    @required Result expiredActionCode(),
    @required Result invalidActionCode(),
    @required Result internalServerError(),
    @required Result genericError(),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNotFound(),
    Result userDisabled(),
    Result wrongPassword(),
    Result weakPassword(),
    Result emailAlreadyInUse(),
    Result usernameAlreadyInUse(),
    Result invalidEmail(),
    Result expiredActionCode(),
    Result invalidActionCode(),
    Result internalServerError(),
    Result genericError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNotFound(UserNotFound value),
    @required Result userDisabled(UserDisabled value),
    @required Result wrongPassword(WrongPassword value),
    @required Result weakPassword(WeakPassword value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result expiredActionCode(ExpiredActionCode value),
    @required Result invalidActionCode(InvalidActionCode value),
    @required Result internalServerError(InternalServerError value),
    @required Result genericError(GenericError value),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(UserNotFound value),
    Result userDisabled(UserDisabled value),
    Result wrongPassword(WrongPassword value),
    Result weakPassword(WeakPassword value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result invalidEmail(InvalidEmail value),
    Result expiredActionCode(ExpiredActionCode value),
    Result invalidActionCode(InvalidActionCode value),
    Result internalServerError(InternalServerError value),
    Result genericError(GenericError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$InvalidEmailToJson(this)..['runtimeType'] = 'invalidEmail';
  }
}

abstract class InvalidEmail extends AuthFailure {
  const InvalidEmail._() : super._();
  const factory InvalidEmail() = _$InvalidEmail;

  factory InvalidEmail.fromJson(Map<String, dynamic> json) =
      _$InvalidEmail.fromJson;
}

abstract class $ExpiredActionCodeCopyWith<$Res> {
  factory $ExpiredActionCodeCopyWith(
          ExpiredActionCode value, $Res Function(ExpiredActionCode) then) =
      _$ExpiredActionCodeCopyWithImpl<$Res>;
}

class _$ExpiredActionCodeCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $ExpiredActionCodeCopyWith<$Res> {
  _$ExpiredActionCodeCopyWithImpl(
      ExpiredActionCode _value, $Res Function(ExpiredActionCode) _then)
      : super(_value, (v) => _then(v as ExpiredActionCode));

  @override
  ExpiredActionCode get _value => super._value as ExpiredActionCode;
}

@JsonSerializable()
class _$ExpiredActionCode extends ExpiredActionCode {
  const _$ExpiredActionCode() : super._();

  factory _$ExpiredActionCode.fromJson(Map<String, dynamic> json) =>
      _$_$ExpiredActionCodeFromJson(json);

  @override
  String toString() {
    return 'AuthFailure.expiredActionCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ExpiredActionCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNotFound(),
    @required Result userDisabled(),
    @required Result wrongPassword(),
    @required Result weakPassword(),
    @required Result emailAlreadyInUse(),
    @required Result usernameAlreadyInUse(),
    @required Result invalidEmail(),
    @required Result expiredActionCode(),
    @required Result invalidActionCode(),
    @required Result internalServerError(),
    @required Result genericError(),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return expiredActionCode();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNotFound(),
    Result userDisabled(),
    Result wrongPassword(),
    Result weakPassword(),
    Result emailAlreadyInUse(),
    Result usernameAlreadyInUse(),
    Result invalidEmail(),
    Result expiredActionCode(),
    Result invalidActionCode(),
    Result internalServerError(),
    Result genericError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (expiredActionCode != null) {
      return expiredActionCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNotFound(UserNotFound value),
    @required Result userDisabled(UserDisabled value),
    @required Result wrongPassword(WrongPassword value),
    @required Result weakPassword(WeakPassword value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result expiredActionCode(ExpiredActionCode value),
    @required Result invalidActionCode(InvalidActionCode value),
    @required Result internalServerError(InternalServerError value),
    @required Result genericError(GenericError value),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return expiredActionCode(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(UserNotFound value),
    Result userDisabled(UserDisabled value),
    Result wrongPassword(WrongPassword value),
    Result weakPassword(WeakPassword value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result invalidEmail(InvalidEmail value),
    Result expiredActionCode(ExpiredActionCode value),
    Result invalidActionCode(InvalidActionCode value),
    Result internalServerError(InternalServerError value),
    Result genericError(GenericError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (expiredActionCode != null) {
      return expiredActionCode(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ExpiredActionCodeToJson(this)
      ..['runtimeType'] = 'expiredActionCode';
  }
}

abstract class ExpiredActionCode extends AuthFailure {
  const ExpiredActionCode._() : super._();
  const factory ExpiredActionCode() = _$ExpiredActionCode;

  factory ExpiredActionCode.fromJson(Map<String, dynamic> json) =
      _$ExpiredActionCode.fromJson;
}

abstract class $InvalidActionCodeCopyWith<$Res> {
  factory $InvalidActionCodeCopyWith(
          InvalidActionCode value, $Res Function(InvalidActionCode) then) =
      _$InvalidActionCodeCopyWithImpl<$Res>;
}

class _$InvalidActionCodeCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidActionCodeCopyWith<$Res> {
  _$InvalidActionCodeCopyWithImpl(
      InvalidActionCode _value, $Res Function(InvalidActionCode) _then)
      : super(_value, (v) => _then(v as InvalidActionCode));

  @override
  InvalidActionCode get _value => super._value as InvalidActionCode;
}

@JsonSerializable()
class _$InvalidActionCode extends InvalidActionCode {
  const _$InvalidActionCode() : super._();

  factory _$InvalidActionCode.fromJson(Map<String, dynamic> json) =>
      _$_$InvalidActionCodeFromJson(json);

  @override
  String toString() {
    return 'AuthFailure.invalidActionCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidActionCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNotFound(),
    @required Result userDisabled(),
    @required Result wrongPassword(),
    @required Result weakPassword(),
    @required Result emailAlreadyInUse(),
    @required Result usernameAlreadyInUse(),
    @required Result invalidEmail(),
    @required Result expiredActionCode(),
    @required Result invalidActionCode(),
    @required Result internalServerError(),
    @required Result genericError(),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return invalidActionCode();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNotFound(),
    Result userDisabled(),
    Result wrongPassword(),
    Result weakPassword(),
    Result emailAlreadyInUse(),
    Result usernameAlreadyInUse(),
    Result invalidEmail(),
    Result expiredActionCode(),
    Result invalidActionCode(),
    Result internalServerError(),
    Result genericError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidActionCode != null) {
      return invalidActionCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNotFound(UserNotFound value),
    @required Result userDisabled(UserDisabled value),
    @required Result wrongPassword(WrongPassword value),
    @required Result weakPassword(WeakPassword value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result expiredActionCode(ExpiredActionCode value),
    @required Result invalidActionCode(InvalidActionCode value),
    @required Result internalServerError(InternalServerError value),
    @required Result genericError(GenericError value),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return invalidActionCode(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(UserNotFound value),
    Result userDisabled(UserDisabled value),
    Result wrongPassword(WrongPassword value),
    Result weakPassword(WeakPassword value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result invalidEmail(InvalidEmail value),
    Result expiredActionCode(ExpiredActionCode value),
    Result invalidActionCode(InvalidActionCode value),
    Result internalServerError(InternalServerError value),
    Result genericError(GenericError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidActionCode != null) {
      return invalidActionCode(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$InvalidActionCodeToJson(this)
      ..['runtimeType'] = 'invalidActionCode';
  }
}

abstract class InvalidActionCode extends AuthFailure {
  const InvalidActionCode._() : super._();
  const factory InvalidActionCode() = _$InvalidActionCode;

  factory InvalidActionCode.fromJson(Map<String, dynamic> json) =
      _$InvalidActionCode.fromJson;
}

abstract class $InternalServerErrorCopyWith<$Res> {
  factory $InternalServerErrorCopyWith(
          InternalServerError value, $Res Function(InternalServerError) then) =
      _$InternalServerErrorCopyWithImpl<$Res>;
}

class _$InternalServerErrorCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InternalServerErrorCopyWith<$Res> {
  _$InternalServerErrorCopyWithImpl(
      InternalServerError _value, $Res Function(InternalServerError) _then)
      : super(_value, (v) => _then(v as InternalServerError));

  @override
  InternalServerError get _value => super._value as InternalServerError;
}

@JsonSerializable()
class _$InternalServerError extends InternalServerError {
  const _$InternalServerError() : super._();

  factory _$InternalServerError.fromJson(Map<String, dynamic> json) =>
      _$_$InternalServerErrorFromJson(json);

  @override
  String toString() {
    return 'AuthFailure.internalServerError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InternalServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNotFound(),
    @required Result userDisabled(),
    @required Result wrongPassword(),
    @required Result weakPassword(),
    @required Result emailAlreadyInUse(),
    @required Result usernameAlreadyInUse(),
    @required Result invalidEmail(),
    @required Result expiredActionCode(),
    @required Result invalidActionCode(),
    @required Result internalServerError(),
    @required Result genericError(),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return internalServerError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNotFound(),
    Result userDisabled(),
    Result wrongPassword(),
    Result weakPassword(),
    Result emailAlreadyInUse(),
    Result usernameAlreadyInUse(),
    Result invalidEmail(),
    Result expiredActionCode(),
    Result invalidActionCode(),
    Result internalServerError(),
    Result genericError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internalServerError != null) {
      return internalServerError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNotFound(UserNotFound value),
    @required Result userDisabled(UserDisabled value),
    @required Result wrongPassword(WrongPassword value),
    @required Result weakPassword(WeakPassword value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result expiredActionCode(ExpiredActionCode value),
    @required Result invalidActionCode(InvalidActionCode value),
    @required Result internalServerError(InternalServerError value),
    @required Result genericError(GenericError value),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return internalServerError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(UserNotFound value),
    Result userDisabled(UserDisabled value),
    Result wrongPassword(WrongPassword value),
    Result weakPassword(WeakPassword value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result invalidEmail(InvalidEmail value),
    Result expiredActionCode(ExpiredActionCode value),
    Result invalidActionCode(InvalidActionCode value),
    Result internalServerError(InternalServerError value),
    Result genericError(GenericError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$InternalServerErrorToJson(this)
      ..['runtimeType'] = 'internalServerError';
  }
}

abstract class InternalServerError extends AuthFailure {
  const InternalServerError._() : super._();
  const factory InternalServerError() = _$InternalServerError;

  factory InternalServerError.fromJson(Map<String, dynamic> json) =
      _$InternalServerError.fromJson;
}

abstract class $GenericErrorCopyWith<$Res> {
  factory $GenericErrorCopyWith(
          GenericError value, $Res Function(GenericError) then) =
      _$GenericErrorCopyWithImpl<$Res>;
}

class _$GenericErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $GenericErrorCopyWith<$Res> {
  _$GenericErrorCopyWithImpl(
      GenericError _value, $Res Function(GenericError) _then)
      : super(_value, (v) => _then(v as GenericError));

  @override
  GenericError get _value => super._value as GenericError;
}

@JsonSerializable()
class _$GenericError extends GenericError {
  const _$GenericError() : super._();

  factory _$GenericError.fromJson(Map<String, dynamic> json) =>
      _$_$GenericErrorFromJson(json);

  @override
  String toString() {
    return 'AuthFailure.genericError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GenericError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNotFound(),
    @required Result userDisabled(),
    @required Result wrongPassword(),
    @required Result weakPassword(),
    @required Result emailAlreadyInUse(),
    @required Result usernameAlreadyInUse(),
    @required Result invalidEmail(),
    @required Result expiredActionCode(),
    @required Result invalidActionCode(),
    @required Result internalServerError(),
    @required Result genericError(),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return genericError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNotFound(),
    Result userDisabled(),
    Result wrongPassword(),
    Result weakPassword(),
    Result emailAlreadyInUse(),
    Result usernameAlreadyInUse(),
    Result invalidEmail(),
    Result expiredActionCode(),
    Result invalidActionCode(),
    Result internalServerError(),
    Result genericError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genericError != null) {
      return genericError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNotFound(UserNotFound value),
    @required Result userDisabled(UserDisabled value),
    @required Result wrongPassword(WrongPassword value),
    @required Result weakPassword(WeakPassword value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result invalidEmail(InvalidEmail value),
    @required Result expiredActionCode(ExpiredActionCode value),
    @required Result invalidActionCode(InvalidActionCode value),
    @required Result internalServerError(InternalServerError value),
    @required Result genericError(GenericError value),
  }) {
    assert(userNotFound != null);
    assert(userDisabled != null);
    assert(wrongPassword != null);
    assert(weakPassword != null);
    assert(emailAlreadyInUse != null);
    assert(usernameAlreadyInUse != null);
    assert(invalidEmail != null);
    assert(expiredActionCode != null);
    assert(invalidActionCode != null);
    assert(internalServerError != null);
    assert(genericError != null);
    return genericError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(UserNotFound value),
    Result userDisabled(UserDisabled value),
    Result wrongPassword(WrongPassword value),
    Result weakPassword(WeakPassword value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result invalidEmail(InvalidEmail value),
    Result expiredActionCode(ExpiredActionCode value),
    Result invalidActionCode(InvalidActionCode value),
    Result internalServerError(InternalServerError value),
    Result genericError(GenericError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genericError != null) {
      return genericError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$GenericErrorToJson(this)..['runtimeType'] = 'genericError';
  }
}

abstract class GenericError extends AuthFailure {
  const GenericError._() : super._();
  const factory GenericError() = _$GenericError;

  factory GenericError.fromJson(Map<String, dynamic> json) =
      _$GenericError.fromJson;
}
