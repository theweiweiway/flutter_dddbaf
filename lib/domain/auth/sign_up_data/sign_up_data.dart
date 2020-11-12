import 'package:flutter_dddbaf/domain/shared/phone/phone.dart';
import 'package:flutter_dddbaf/domain/shared/thumbnail/thumbnail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_data.freezed.dart';
part "sign_up_data.g.dart";

@freezed
abstract class SignUpData with _$SignUpData {
  const SignUpData._();

  const factory SignUpData({
    String email,
    String username,
    String password,
    Phone phone,
    Thumbnail thumbnail,
  }) = _SignUpData;

  factory SignUpData.initial() => SignUpData(
        email: "",
        username: "",
        password: "",
        phone: Phone.initial(),
        thumbnail: Thumbnail.initial(),
      );

  factory SignUpData.fromJson(Map<String, dynamic> json) =>
      _$SignUpDataFromJson(json);
}
