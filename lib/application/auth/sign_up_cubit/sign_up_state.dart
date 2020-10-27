import 'package:flutter_dddbaf/domain/auth/auth_failure/auth_failure.dart';
import 'package:flutter_dddbaf/domain/core/success/success.dart';
import 'package:flutter_dddbaf/presentation/navigation/screens.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "sign_up_state.freezed.dart";
part "sign_up_state.g.dart";

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default("") String email,
    @Default("") String username,
    @Default("") String password,
    Success success,
    AuthFailure authFailure,
    EScreen redirectTo,
  }) = _SignUpState;

  factory SignUpState.fromJson(Map<String, dynamic> json) =>
      _$SignUpStateFromJson(json);
}
