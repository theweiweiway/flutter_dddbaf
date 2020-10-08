import 'package:freezed_annotation/freezed_annotation.dart';

part "auth_failure.freezed.dart";
part "auth_failure.g.dart";

@freezed
abstract class AuthFailure with _$AuthFailure {
  const AuthFailure._();

  // LOGIN FAILURES
  const factory AuthFailure.userNotFound() = UserNotFound;
  const factory AuthFailure.userDisabled() = UserDisabled;
  const factory AuthFailure.wrongPassword() = WrongPassword;

  // SIGN UP FAILURES
  const factory AuthFailure.weakPassword() = WeakPassword;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmail() = InvalidEmail;

  // ACTION CODE FAILURES
  const factory AuthFailure.expiredActionCode() = ExpiredActionCode;
  const factory AuthFailure.invalidActionCode() = InvalidActionCode;

  // GENERIC
  const factory AuthFailure.internalServerError() = InternalServerError;
  const factory AuthFailure.genericError() = GenericError;

  factory AuthFailure.fromJson(Map<String, dynamic> json) =>
      _$AuthFailureFromJson(json);
}
