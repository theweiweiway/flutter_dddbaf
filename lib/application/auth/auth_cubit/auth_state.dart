import 'package:freezed_annotation/freezed_annotation.dart';

part "auth_state.freezed.dart";

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.loggedOut({
    @Default(false) bool loading,
    // Failure failure, // triggers flushbar
    // Success success,
    // LoginFailure loginFailure, // does not trigger flushbar. Triggers redirect
  }) = LoggedOut;

  const factory AuthState.loggedIn({
    String uid,
    String email,
  }) = LoggedIn;
}
