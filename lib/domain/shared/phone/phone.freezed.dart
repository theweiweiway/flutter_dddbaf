// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'phone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Phone _$PhoneFromJson(Map<String, dynamic> json) {
  return _Phone.fromJson(json);
}

/// @nodoc
class _$PhoneTearOff {
  const _$PhoneTearOff();

// ignore: unused_element
  _Phone call({String countryCode = '', String number = ''}) {
    return _Phone(
      countryCode: countryCode,
      number: number,
    );
  }

// ignore: unused_element
  Phone fromJson(Map<String, Object> json) {
    return Phone.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Phone = _$PhoneTearOff();

/// @nodoc
mixin _$Phone {
  String get countryCode;
  String get number;

  Map<String, dynamic> toJson();
  $PhoneCopyWith<Phone> get copyWith;
}

/// @nodoc
abstract class $PhoneCopyWith<$Res> {
  factory $PhoneCopyWith(Phone value, $Res Function(Phone) then) =
      _$PhoneCopyWithImpl<$Res>;
  $Res call({String countryCode, String number});
}

/// @nodoc
class _$PhoneCopyWithImpl<$Res> implements $PhoneCopyWith<$Res> {
  _$PhoneCopyWithImpl(this._value, this._then);

  final Phone _value;
  // ignore: unused_field
  final $Res Function(Phone) _then;

  @override
  $Res call({
    Object countryCode = freezed,
    Object number = freezed,
  }) {
    return _then(_value.copyWith(
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      number: number == freezed ? _value.number : number as String,
    ));
  }
}

/// @nodoc
abstract class _$PhoneCopyWith<$Res> implements $PhoneCopyWith<$Res> {
  factory _$PhoneCopyWith(_Phone value, $Res Function(_Phone) then) =
      __$PhoneCopyWithImpl<$Res>;
  @override
  $Res call({String countryCode, String number});
}

/// @nodoc
class __$PhoneCopyWithImpl<$Res> extends _$PhoneCopyWithImpl<$Res>
    implements _$PhoneCopyWith<$Res> {
  __$PhoneCopyWithImpl(_Phone _value, $Res Function(_Phone) _then)
      : super(_value, (v) => _then(v as _Phone));

  @override
  _Phone get _value => super._value as _Phone;

  @override
  $Res call({
    Object countryCode = freezed,
    Object number = freezed,
  }) {
    return _then(_Phone(
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      number: number == freezed ? _value.number : number as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Phone extends _Phone {
  const _$_Phone({this.countryCode = '', this.number = ''})
      : assert(countryCode != null),
        assert(number != null),
        super._();

  factory _$_Phone.fromJson(Map<String, dynamic> json) =>
      _$_$_PhoneFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String countryCode;
  @JsonKey(defaultValue: '')
  @override
  final String number;

  @override
  String toString() {
    return 'Phone(countryCode: $countryCode, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Phone &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(number);

  @override
  _$PhoneCopyWith<_Phone> get copyWith =>
      __$PhoneCopyWithImpl<_Phone>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PhoneToJson(this);
  }
}

abstract class _Phone extends Phone {
  const _Phone._() : super._();
  const factory _Phone({String countryCode, String number}) = _$_Phone;

  factory _Phone.fromJson(Map<String, dynamic> json) = _$_Phone.fromJson;

  @override
  String get countryCode;
  @override
  String get number;
  @override
  _$PhoneCopyWith<_Phone> get copyWith;
}
