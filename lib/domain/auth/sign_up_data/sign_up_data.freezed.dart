// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_up_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SignUpData _$SignUpDataFromJson(Map<String, dynamic> json) {
  return _SignUpData.fromJson(json);
}

/// @nodoc
class _$SignUpDataTearOff {
  const _$SignUpDataTearOff();

// ignore: unused_element
  _SignUpData call(
      {String email,
      String username,
      String password,
      Phone phone,
      Thumbnail thumbnail}) {
    return _SignUpData(
      email: email,
      username: username,
      password: password,
      phone: phone,
      thumbnail: thumbnail,
    );
  }

// ignore: unused_element
  SignUpData fromJson(Map<String, Object> json) {
    return SignUpData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpData = _$SignUpDataTearOff();

/// @nodoc
mixin _$SignUpData {
  String get email;
  String get username;
  String get password;
  Phone get phone;
  Thumbnail get thumbnail;

  Map<String, dynamic> toJson();
  $SignUpDataCopyWith<SignUpData> get copyWith;
}

/// @nodoc
abstract class $SignUpDataCopyWith<$Res> {
  factory $SignUpDataCopyWith(
          SignUpData value, $Res Function(SignUpData) then) =
      _$SignUpDataCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String username,
      String password,
      Phone phone,
      Thumbnail thumbnail});

  $PhoneCopyWith<$Res> get phone;
  $ThumbnailCopyWith<$Res> get thumbnail;
}

/// @nodoc
class _$SignUpDataCopyWithImpl<$Res> implements $SignUpDataCopyWith<$Res> {
  _$SignUpDataCopyWithImpl(this._value, this._then);

  final SignUpData _value;
  // ignore: unused_field
  final $Res Function(SignUpData) _then;

  @override
  $Res call({
    Object email = freezed,
    Object username = freezed,
    Object password = freezed,
    Object phone = freezed,
    Object thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
      phone: phone == freezed ? _value.phone : phone as Phone,
      thumbnail:
          thumbnail == freezed ? _value.thumbnail : thumbnail as Thumbnail,
    ));
  }

  @override
  $PhoneCopyWith<$Res> get phone {
    if (_value.phone == null) {
      return null;
    }
    return $PhoneCopyWith<$Res>(_value.phone, (value) {
      return _then(_value.copyWith(phone: value));
    });
  }

  @override
  $ThumbnailCopyWith<$Res> get thumbnail {
    if (_value.thumbnail == null) {
      return null;
    }
    return $ThumbnailCopyWith<$Res>(_value.thumbnail, (value) {
      return _then(_value.copyWith(thumbnail: value));
    });
  }
}

/// @nodoc
abstract class _$SignUpDataCopyWith<$Res> implements $SignUpDataCopyWith<$Res> {
  factory _$SignUpDataCopyWith(
          _SignUpData value, $Res Function(_SignUpData) then) =
      __$SignUpDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String username,
      String password,
      Phone phone,
      Thumbnail thumbnail});

  @override
  $PhoneCopyWith<$Res> get phone;
  @override
  $ThumbnailCopyWith<$Res> get thumbnail;
}

/// @nodoc
class __$SignUpDataCopyWithImpl<$Res> extends _$SignUpDataCopyWithImpl<$Res>
    implements _$SignUpDataCopyWith<$Res> {
  __$SignUpDataCopyWithImpl(
      _SignUpData _value, $Res Function(_SignUpData) _then)
      : super(_value, (v) => _then(v as _SignUpData));

  @override
  _SignUpData get _value => super._value as _SignUpData;

  @override
  $Res call({
    Object email = freezed,
    Object username = freezed,
    Object password = freezed,
    Object phone = freezed,
    Object thumbnail = freezed,
  }) {
    return _then(_SignUpData(
      email: email == freezed ? _value.email : email as String,
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
      phone: phone == freezed ? _value.phone : phone as Phone,
      thumbnail:
          thumbnail == freezed ? _value.thumbnail : thumbnail as Thumbnail,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SignUpData extends _SignUpData {
  const _$_SignUpData(
      {this.email, this.username, this.password, this.phone, this.thumbnail})
      : super._();

  factory _$_SignUpData.fromJson(Map<String, dynamic> json) =>
      _$_$_SignUpDataFromJson(json);

  @override
  final String email;
  @override
  final String username;
  @override
  final String password;
  @override
  final Phone phone;
  @override
  final Thumbnail thumbnail;

  @override
  String toString() {
    return 'SignUpData(email: $email, username: $username, password: $password, phone: $phone, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpData &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(thumbnail);

  @override
  _$SignUpDataCopyWith<_SignUpData> get copyWith =>
      __$SignUpDataCopyWithImpl<_SignUpData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignUpDataToJson(this);
  }
}

abstract class _SignUpData extends SignUpData {
  const _SignUpData._() : super._();
  const factory _SignUpData(
      {String email,
      String username,
      String password,
      Phone phone,
      Thumbnail thumbnail}) = _$_SignUpData;

  factory _SignUpData.fromJson(Map<String, dynamic> json) =
      _$_SignUpData.fromJson;

  @override
  String get email;
  @override
  String get username;
  @override
  String get password;
  @override
  Phone get phone;
  @override
  Thumbnail get thumbnail;
  @override
  _$SignUpDataCopyWith<_SignUpData> get copyWith;
}
