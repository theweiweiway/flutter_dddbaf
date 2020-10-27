// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Failure _$FailureFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'error':
      return Error.fromJson(json);
    case 'socketException':
      return SocketExceptionFailure.fromJson(json);
    case 'internalServerError':
      return InternalServerError.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

// ignore: unused_element
  Error error({String message, String error}) {
    return Error(
      message: message,
      error: error,
    );
  }

// ignore: unused_element
  SocketExceptionFailure socketException() {
    return const SocketExceptionFailure();
  }

// ignore: unused_element
  InternalServerError internalServerError() {
    return const InternalServerError();
  }

// ignore: unused_element
  Failure fromJson(Map<String, Object> json) {
    return Failure.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result error(String message, String error),
    @required Result socketException(),
    @required Result internalServerError(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result error(String message, String error),
    Result socketException(),
    Result internalServerError(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result error(Error value),
    @required Result socketException(SocketExceptionFailure value),
    @required Result internalServerError(InternalServerError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result error(Error value),
    Result socketException(SocketExceptionFailure value),
    Result internalServerError(InternalServerError value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message, String error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object message = freezed,
    Object error = freezed,
  }) {
    return _then(Error(
      message: message == freezed ? _value.message : message as String,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$Error implements Error {
  const _$Error({this.message, this.error});

  factory _$Error.fromJson(Map<String, dynamic> json) =>
      _$_$ErrorFromJson(json);

  @override
  final String message;
  @override
  final String error;

  @override
  String toString() {
    return 'Failure.error(message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error);

  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result error(String message, String error),
    @required Result socketException(),
    @required Result internalServerError(),
  }) {
    assert(error != null);
    assert(socketException != null);
    assert(internalServerError != null);
    return error(message, this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result error(String message, String error),
    Result socketException(),
    Result internalServerError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result error(Error value),
    @required Result socketException(SocketExceptionFailure value),
    @required Result internalServerError(InternalServerError value),
  }) {
    assert(error != null);
    assert(socketException != null);
    assert(internalServerError != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result error(Error value),
    Result socketException(SocketExceptionFailure value),
    Result internalServerError(InternalServerError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ErrorToJson(this)..['runtimeType'] = 'error';
  }
}

abstract class Error implements Failure {
  const factory Error({String message, String error}) = _$Error;

  factory Error.fromJson(Map<String, dynamic> json) = _$Error.fromJson;

  String get message;
  String get error;
  $ErrorCopyWith<Error> get copyWith;
}

/// @nodoc
abstract class $SocketExceptionFailureCopyWith<$Res> {
  factory $SocketExceptionFailureCopyWith(SocketExceptionFailure value,
          $Res Function(SocketExceptionFailure) then) =
      _$SocketExceptionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$SocketExceptionFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements $SocketExceptionFailureCopyWith<$Res> {
  _$SocketExceptionFailureCopyWithImpl(SocketExceptionFailure _value,
      $Res Function(SocketExceptionFailure) _then)
      : super(_value, (v) => _then(v as SocketExceptionFailure));

  @override
  SocketExceptionFailure get _value => super._value as SocketExceptionFailure;
}

@JsonSerializable()

/// @nodoc
class _$SocketExceptionFailure implements SocketExceptionFailure {
  const _$SocketExceptionFailure();

  factory _$SocketExceptionFailure.fromJson(Map<String, dynamic> json) =>
      _$_$SocketExceptionFailureFromJson(json);

  @override
  String toString() {
    return 'Failure.socketException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SocketExceptionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result error(String message, String error),
    @required Result socketException(),
    @required Result internalServerError(),
  }) {
    assert(error != null);
    assert(socketException != null);
    assert(internalServerError != null);
    return socketException();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result error(String message, String error),
    Result socketException(),
    Result internalServerError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (socketException != null) {
      return socketException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result error(Error value),
    @required Result socketException(SocketExceptionFailure value),
    @required Result internalServerError(InternalServerError value),
  }) {
    assert(error != null);
    assert(socketException != null);
    assert(internalServerError != null);
    return socketException(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result error(Error value),
    Result socketException(SocketExceptionFailure value),
    Result internalServerError(InternalServerError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (socketException != null) {
      return socketException(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$SocketExceptionFailureToJson(this)
      ..['runtimeType'] = 'socketException';
  }
}

abstract class SocketExceptionFailure implements Failure {
  const factory SocketExceptionFailure() = _$SocketExceptionFailure;

  factory SocketExceptionFailure.fromJson(Map<String, dynamic> json) =
      _$SocketExceptionFailure.fromJson;
}

/// @nodoc
abstract class $InternalServerErrorCopyWith<$Res> {
  factory $InternalServerErrorCopyWith(
          InternalServerError value, $Res Function(InternalServerError) then) =
      _$InternalServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$InternalServerErrorCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements $InternalServerErrorCopyWith<$Res> {
  _$InternalServerErrorCopyWithImpl(
      InternalServerError _value, $Res Function(InternalServerError) _then)
      : super(_value, (v) => _then(v as InternalServerError));

  @override
  InternalServerError get _value => super._value as InternalServerError;
}

@JsonSerializable()

/// @nodoc
class _$InternalServerError implements InternalServerError {
  const _$InternalServerError();

  factory _$InternalServerError.fromJson(Map<String, dynamic> json) =>
      _$_$InternalServerErrorFromJson(json);

  @override
  String toString() {
    return 'Failure.internalServerError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InternalServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result error(String message, String error),
    @required Result socketException(),
    @required Result internalServerError(),
  }) {
    assert(error != null);
    assert(socketException != null);
    assert(internalServerError != null);
    return internalServerError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result error(String message, String error),
    Result socketException(),
    Result internalServerError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internalServerError != null) {
      return internalServerError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result error(Error value),
    @required Result socketException(SocketExceptionFailure value),
    @required Result internalServerError(InternalServerError value),
  }) {
    assert(error != null);
    assert(socketException != null);
    assert(internalServerError != null);
    return internalServerError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result error(Error value),
    Result socketException(SocketExceptionFailure value),
    Result internalServerError(InternalServerError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$InternalServerErrorToJson(this)
      ..['runtimeType'] = 'internalServerError';
  }
}

abstract class InternalServerError implements Failure {
  const factory InternalServerError() = _$InternalServerError;

  factory InternalServerError.fromJson(Map<String, dynamic> json) =
      _$InternalServerError.fromJson;
}
