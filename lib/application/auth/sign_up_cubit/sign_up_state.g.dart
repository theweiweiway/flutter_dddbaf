// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpState _$_$_SignUpStateFromJson(Map<String, dynamic> json) {
  return _$_SignUpState(
    signUpData: json['signUpData'] == null
        ? null
        : SignUpData.fromJson(json['signUpData'] as Map<String, dynamic>),
    success: json['success'] == null
        ? null
        : Success.fromJson(json['success'] as Map<String, dynamic>),
    authFailure: json['authFailure'] == null
        ? null
        : AuthFailure.fromJson(json['authFailure'] as Map<String, dynamic>),
    redirectTo: json['redirectTo'] == null
        ? null
        : EScreen.fromJson(json['redirectTo'] as String),
  );
}

Map<String, dynamic> _$_$_SignUpStateToJson(_$_SignUpState instance) =>
    <String, dynamic>{
      'signUpData': instance.signUpData,
      'success': instance.success,
      'authFailure': instance.authFailure,
      'redirectTo': instance.redirectTo,
    };
