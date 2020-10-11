// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpState _$_$_SignUpStateFromJson(Map<String, dynamic> json) {
  return _$_SignUpState(
    email: json['email'] as String ?? '',
    username: json['username'] as String ?? '',
    password: json['password'] as String ?? '',
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
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
      'success': instance.success,
      'authFailure': instance.authFailure,
      'redirectTo': instance.redirectTo,
    };
