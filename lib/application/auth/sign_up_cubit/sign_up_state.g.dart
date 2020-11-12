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
    redirectTo: _$enumDecodeNullable(_$EScreenEnumMap, json['redirectTo']),
  );
}

Map<String, dynamic> _$_$_SignUpStateToJson(_$_SignUpState instance) =>
    <String, dynamic>{
      'signUpData': instance.signUpData,
      'success': instance.success,
      'authFailure': instance.authFailure,
      'redirectTo': _$EScreenEnumMap[instance.redirectTo],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$EScreenEnumMap = {
  EScreen.searchHome: 'searchHome',
  EScreen.search: 'search',
  EScreen.signUpEmail: 'signUpEmail',
  EScreen.signUpUsername: 'signUpUsername',
  EScreen.signUpPassword: 'signUpPassword',
  EScreen.accountHome: 'accountHome',
  EScreen.accountProfile: 'accountProfile',
  EScreen.accountSecurity: 'accountSecurity',
  EScreen.accountSettings: 'accountSettings',
};
