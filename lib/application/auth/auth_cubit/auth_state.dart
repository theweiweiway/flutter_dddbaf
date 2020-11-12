import 'package:flutter_dddbaf/domain/auth/auth_failure/auth_failure.dart';
import 'package:flutter_dddbaf/domain/core/success/success.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "auth_state.freezed.dart";

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.loggedOut({
    /// This works in conjunction with `showLoadingDialog` to let the
    /// user know that the app is loading
    @Default(false) bool loading,

    /// A failure when an authentication function fails.
    /// This works in conjunction with `showErrorFlushbar` to let the user
    /// know of the failure
    AuthFailure failure,
    Success success,
  }) = LoggedOut;

  /// Add any fields here to store the user's info once they are logged in
  const factory AuthState.loggedIn({
    String uid,
    String username,
    String email,
  }) = LoggedIn;
}
