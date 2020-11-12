// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpData _$_$_SignUpDataFromJson(Map<String, dynamic> json) {
  return _$_SignUpData(
    email: json['email'] as String,
    username: json['username'] as String,
    password: json['password'] as String,
    phone: json['phone'] == null
        ? null
        : Phone.fromJson(json['phone'] as Map<String, dynamic>),
    thumbnail: json['thumbnail'] == null
        ? null
        : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SignUpDataToJson(_$_SignUpData instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
      'phone': instance.phone,
      'thumbnail': instance.thumbnail,
    };
