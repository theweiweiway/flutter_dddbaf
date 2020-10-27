// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'screens.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EScreen _$EScreenFromJson(Map<String, dynamic> json) {
  return _EScreen.fromJson(json);
}

/// @nodoc
class _$EScreenTearOff {
  const _$EScreenTearOff();

// ignore: unused_element
  _EScreen call(String label) {
    return _EScreen(
      label,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EScreen = _$EScreenTearOff();

/// @nodoc
mixin _$EScreen {
  String get label;

  Map<String, dynamic> toJson();
  $EScreenCopyWith<EScreen> get copyWith;
}

/// @nodoc
abstract class $EScreenCopyWith<$Res> {
  factory $EScreenCopyWith(EScreen value, $Res Function(EScreen) then) =
      _$EScreenCopyWithImpl<$Res>;
  $Res call({String label});
}

/// @nodoc
class _$EScreenCopyWithImpl<$Res> implements $EScreenCopyWith<$Res> {
  _$EScreenCopyWithImpl(this._value, this._then);

  final EScreen _value;
  // ignore: unused_field
  final $Res Function(EScreen) _then;

  @override
  $Res call({
    Object label = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed ? _value.label : label as String,
    ));
  }
}

/// @nodoc
abstract class _$EScreenCopyWith<$Res> implements $EScreenCopyWith<$Res> {
  factory _$EScreenCopyWith(_EScreen value, $Res Function(_EScreen) then) =
      __$EScreenCopyWithImpl<$Res>;
  @override
  $Res call({String label});
}

/// @nodoc
class __$EScreenCopyWithImpl<$Res> extends _$EScreenCopyWithImpl<$Res>
    implements _$EScreenCopyWith<$Res> {
  __$EScreenCopyWithImpl(_EScreen _value, $Res Function(_EScreen) _then)
      : super(_value, (v) => _then(v as _EScreen));

  @override
  _EScreen get _value => super._value as _EScreen;

  @override
  $Res call({
    Object label = freezed,
  }) {
    return _then(_EScreen(
      label == freezed ? _value.label : label as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EScreen implements _EScreen {
  const _$_EScreen(this.label) : assert(label != null);

  factory _$_EScreen.fromJson(Map<String, dynamic> json) =>
      _$_$_EScreenFromJson(json);

  @override
  final String label;

  @override
  String toString() {
    return 'EScreen(label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EScreen &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(label);

  @override
  _$EScreenCopyWith<_EScreen> get copyWith =>
      __$EScreenCopyWithImpl<_EScreen>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EScreenToJson(this);
  }
}

abstract class _EScreen implements EScreen {
  const factory _EScreen(String label) = _$_EScreen;

  factory _EScreen.fromJson(Map<String, dynamic> json) = _$_EScreen.fromJson;

  @override
  String get label;
  @override
  _$EScreenCopyWith<_EScreen> get copyWith;
}
