import 'package:flutter_dddbaf/domain/auth/auth_failure/auth_failure.dart';
import 'package:flutter_dddbaf/domain/core/success/success.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "auth_state.freezed.dart";

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.loggedOut({
    @Default(false) bool loading,
    AuthFailure failure, // triggers flushbar
    Success success,
  }) = LoggedOut;

  const factory AuthState.loggedIn({
    String uid,
    String email,
  }) = LoggedIn;
}
