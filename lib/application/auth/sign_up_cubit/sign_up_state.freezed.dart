// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SignUpState _$SignUpStateFromJson(Map<String, dynamic> json) {
  return _SignUpState.fromJson(json);
}

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

// ignore: unused_element
  _SignUpState call(
      {SignUpData signUpData,
      Success success,
      AuthFailure authFailure,
      EScreen redirectTo}) {
    return _SignUpState(
      signUpData: signUpData,
      success: success,
      authFailure: authFailure,
      redirectTo: redirectTo,
    );
  }

// ignore: unused_element
  SignUpState fromJson(Map<String, Object> json) {
    return SignUpState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  /// This holds a user's info during the sign up process
  SignUpData get signUpData;
  Success get success;
  AuthFailure get authFailure;
  EScreen get redirectTo;

  Map<String, dynamic> toJson();
  $SignUpStateCopyWith<SignUpState> get copyWith;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call(
      {SignUpData signUpData,
      Success success,
      AuthFailure authFailure,
      EScreen redirectTo});

  $SignUpDataCopyWith<$Res> get signUpData;
  $SuccessCopyWith<$Res> get success;
  $AuthFailureCopyWith<$Res> get authFailure;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object signUpData = freezed,
    Object success = freezed,
    Object authFailure = freezed,
    Object redirectTo = freezed,
  }) {
    return _then(_value.copyWith(
      signUpData:
          signUpData == freezed ? _value.signUpData : signUpData as SignUpData,
      success: success == freezed ? _value.success : success as Success,
      authFailure: authFailure == freezed
          ? _value.authFailure
          : authFailure as AuthFailure,
      redirectTo:
          redirectTo == freezed ? _value.redirectTo : redirectTo as EScreen,
    ));
  }

  @override
  $SignUpDataCopyWith<$Res> get signUpData {
    if (_value.signUpData == null) {
      return null;
    }
    return $SignUpDataCopyWith<$Res>(_value.signUpData, (value) {
      return _then(_value.copyWith(signUpData: value));
    });
  }

  @override
  $SuccessCopyWith<$Res> get success {
    if (_value.success == null) {
      return null;
    }
    return $SuccessCopyWith<$Res>(_value.success, (value) {
      return _then(_value.copyWith(success: value));
    });
  }

  @override
  $AuthFailureCopyWith<$Res> get authFailure {
    if (_value.authFailure == null) {
      return null;
    }
    return $AuthFailureCopyWith<$Res>(_value.authFailure, (value) {
      return _then(_value.copyWith(authFailure: value));
    });
  }
}

/// @nodoc
abstract class _$SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(
          _SignUpState value, $Res Function(_SignUpState) then) =
      __$SignUpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SignUpData signUpData,
      Success success,
      AuthFailure authFailure,
      EScreen redirectTo});

  @override
  $SignUpDataCopyWith<$Res> get signUpData;
  @override
  $SuccessCopyWith<$Res> get success;
  @override
  $AuthFailureCopyWith<$Res> get authFailure;
}

/// @nodoc
class __$SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(
      _SignUpState _value, $Res Function(_SignUpState) _then)
      : super(_value, (v) => _then(v as _SignUpState));

  @override
  _SignUpState get _value => super._value as _SignUpState;

  @override
  $Res call({
    Object signUpData = freezed,
    Object success = freezed,
    Object authFailure = freezed,
    Object redirectTo = freezed,
  }) {
    return _then(_SignUpState(
      signUpData:
          signUpData == freezed ? _value.signUpData : signUpData as SignUpData,
      success: success == freezed ? _value.success : success as Success,
      authFailure: authFailure == freezed
          ? _value.authFailure
          : authFailure as AuthFailure,
      redirectTo:
          redirectTo == freezed ? _value.redirectTo : redirectTo as EScreen,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SignUpState implements _SignUpState {
  const _$_SignUpState(
      {this.signUpData, this.success, this.authFailure, this.redirectTo});

  factory _$_SignUpState.fromJson(Map<String, dynamic> json) =>
      _$_$_SignUpStateFromJson(json);

  @override

  /// This holds a user's info during the sign up process
  final SignUpData signUpData;
  @override
  final Success success;
  @override
  final AuthFailure authFailure;
  @override
  final EScreen redirectTo;

  @override
  String toString() {
    return 'SignUpState(signUpData: $signUpData, success: $success, authFailure: $authFailure, redirectTo: $redirectTo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpState &&
            (identical(other.signUpData, signUpData) ||
                const DeepCollectionEquality()
                    .equals(other.signUpData, signUpData)) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.authFailure, authFailure) ||
                const DeepCollectionEquality()
                    .equals(other.authFailure, authFailure)) &&
            (identical(other.redirectTo, redirectTo) ||
                const DeepCollectionEquality()
                    .equals(other.redirectTo, redirectTo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(signUpData) ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(authFailure) ^
      const DeepCollectionEquality().hash(redirectTo);

  @override
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignUpStateToJson(this);
  }
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {SignUpData signUpData,
      Success success,
      AuthFailure authFailure,
      EScreen redirectTo}) = _$_SignUpState;

  factory _SignUpState.fromJson(Map<String, dynamic> json) =
      _$_SignUpState.fromJson;

  @override

  /// This holds a user's info during the sign up process
  SignUpData get signUpData;
  @override
  Success get success;
  @override
  AuthFailure get authFailure;
  @override
  EScreen get redirectTo;
  @override
  _$SignUpStateCopyWith<_SignUpState> get copyWith;
}
