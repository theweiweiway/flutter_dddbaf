import 'package:flutter_dddbaf/domain/auth/auth_failure/auth_failure.dart';
import 'package:flutter_dddbaf/domain/auth/sign_up_data/sign_up_data.dart';
import 'package:flutter_dddbaf/domain/core/success/success.dart';
import 'package:flutter_dddbaf/presentation/navigation/screens.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "sign_up_state.freezed.dart";
part "sign_up_state.g.dart";

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    /// This holds a user's info during the sign up process
    SignUpData signUpData,
    Success success,
    AuthFailure authFailure,
    EScreen redirectTo,
  }) = _SignUpState;

  factory SignUpState.initial() =>
      SignUpState(signUpData: SignUpData.initial());

  factory SignUpState.fromJson(Map<String, dynamic> json) =>
      _$SignUpStateFromJson(json);
}
