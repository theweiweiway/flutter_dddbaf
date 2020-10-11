// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  LoggedOut loggedOut(
      {bool loading = false, AuthFailure failure, Success success}) {
    return LoggedOut(
      loading: loading,
      failure: failure,
      success: success,
    );
  }

// ignore: unused_element
  LoggedIn loggedIn({String uid, String email}) {
    return LoggedIn(
      uid: uid,
      email: email,
    );
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result loggedOut(bool loading, AuthFailure failure, Success success),
    @required Result loggedIn(String uid, String email),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loggedOut(bool loading, AuthFailure failure, Success success),
    Result loggedIn(String uid, String email),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loggedOut(LoggedOut value),
    @required Result loggedIn(LoggedIn value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loggedOut(LoggedOut value),
    Result loggedIn(LoggedIn value),
    @required Result orElse(),
  });
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

abstract class $LoggedOutCopyWith<$Res> {
  factory $LoggedOutCopyWith(LoggedOut value, $Res Function(LoggedOut) then) =
      _$LoggedOutCopyWithImpl<$Res>;
  $Res call({bool loading, AuthFailure failure, Success success});

  $AuthFailureCopyWith<$Res> get failure;
  $SuccessCopyWith<$Res> get success;
}

class _$LoggedOutCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $LoggedOutCopyWith<$Res> {
  _$LoggedOutCopyWithImpl(LoggedOut _value, $Res Function(LoggedOut) _then)
      : super(_value, (v) => _then(v as LoggedOut));

  @override
  LoggedOut get _value => super._value as LoggedOut;

  @override
  $Res call({
    Object loading = freezed,
    Object failure = freezed,
    Object success = freezed,
  }) {
    return _then(LoggedOut(
      loading: loading == freezed ? _value.loading : loading as bool,
      failure: failure == freezed ? _value.failure : failure as AuthFailure,
      success: success == freezed ? _value.success : success as Success,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $AuthFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
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
}

class _$LoggedOut implements LoggedOut {
  const _$LoggedOut({this.loading = false, this.failure, this.success})
      : assert(loading != null);

  @JsonKey(defaultValue: false)
  @override
  final bool loading;
  @override
  final AuthFailure failure;
  @override
  final Success success;

  @override
  String toString() {
    return 'AuthState.loggedOut(loading: $loading, failure: $failure, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoggedOut &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(success);

  @override
  $LoggedOutCopyWith<LoggedOut> get copyWith =>
      _$LoggedOutCopyWithImpl<LoggedOut>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result loggedOut(bool loading, AuthFailure failure, Success success),
    @required Result loggedIn(String uid, String email),
  }) {
    assert(loggedOut != null);
    assert(loggedIn != null);
    return loggedOut(loading, failure, success);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loggedOut(bool loading, AuthFailure failure, Success success),
    Result loggedIn(String uid, String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedOut != null) {
      return loggedOut(loading, failure, success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loggedOut(LoggedOut value),
    @required Result loggedIn(LoggedIn value),
  }) {
    assert(loggedOut != null);
    assert(loggedIn != null);
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loggedOut(LoggedOut value),
    Result loggedIn(LoggedIn value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class LoggedOut implements AuthState {
  const factory LoggedOut(
      {bool loading, AuthFailure failure, Success success}) = _$LoggedOut;

  bool get loading;
  AuthFailure get failure;
  Success get success;
  $LoggedOutCopyWith<LoggedOut> get copyWith;
}

abstract class $LoggedInCopyWith<$Res> {
  factory $LoggedInCopyWith(LoggedIn value, $Res Function(LoggedIn) then) =
      _$LoggedInCopyWithImpl<$Res>;
  $Res call({String uid, String email});
}

class _$LoggedInCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $LoggedInCopyWith<$Res> {
  _$LoggedInCopyWithImpl(LoggedIn _value, $Res Function(LoggedIn) _then)
      : super(_value, (v) => _then(v as LoggedIn));

  @override
  LoggedIn get _value => super._value as LoggedIn;

  @override
  $Res call({
    Object uid = freezed,
    Object email = freezed,
  }) {
    return _then(LoggedIn(
      uid: uid == freezed ? _value.uid : uid as String,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

class _$LoggedIn implements LoggedIn {
  const _$LoggedIn({this.uid, this.email});

  @override
  final String uid;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthState.loggedIn(uid: $uid, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoggedIn &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(email);

  @override
  $LoggedInCopyWith<LoggedIn> get copyWith =>
      _$LoggedInCopyWithImpl<LoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result loggedOut(bool loading, AuthFailure failure, Success success),
    @required Result loggedIn(String uid, String email),
  }) {
    assert(loggedOut != null);
    assert(loggedIn != null);
    return loggedIn(uid, email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loggedOut(bool loading, AuthFailure failure, Success success),
    Result loggedIn(String uid, String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn(uid, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loggedOut(LoggedOut value),
    @required Result loggedIn(LoggedIn value),
  }) {
    assert(loggedOut != null);
    assert(loggedIn != null);
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loggedOut(LoggedOut value),
    Result loggedIn(LoggedIn value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoggedIn implements AuthState {
  const factory LoggedIn({String uid, String email}) = _$LoggedIn;

  String get uid;
  String get email;
  $LoggedInCopyWith<LoggedIn> get copyWith;
}
