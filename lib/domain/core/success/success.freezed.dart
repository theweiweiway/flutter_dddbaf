// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Success _$SuccessFromJson(Map<String, dynamic> json) {
  return _Success.fromJson(json);
}

class _$SuccessTearOff {
  const _$SuccessTearOff();

// ignore: unused_element
  _Success call({String message}) {
    return _Success(
      message: message,
    );
  }
}

// ignore: unused_element
const $Success = _$SuccessTearOff();

mixin _$Success {
  String get message;

  Map<String, dynamic> toJson();
  $SuccessCopyWith<Success> get copyWith;
}

abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$SuccessCopyWithImpl<$Res> implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._value, this._then);

  final Success _value;
  // ignore: unused_field
  final $Res Function(Success) _then;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

abstract class _$SuccessCopyWith<$Res> implements $SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

class __$SuccessCopyWithImpl<$Res> extends _$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_Success(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

@JsonSerializable()
class _$_Success implements _Success {
  const _$_Success({this.message});

  factory _$_Success.fromJson(Map<String, dynamic> json) =>
      _$_$_SuccessFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'Success(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SuccessToJson(this);
  }
}

abstract class _Success implements Success {
  const factory _Success({String message}) = _$_Success;

  factory _Success.fromJson(Map<String, dynamic> json) = _$_Success.fromJson;

  @override
  String get message;
  @override
  _$SuccessCopyWith<_Success> get copyWith;
}
