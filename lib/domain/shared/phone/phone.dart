import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone.freezed.dart';
part "phone.g.dart";

@freezed
abstract class Phone with _$Phone {
  const Phone._();

  const factory Phone({
    @Default("") String countryCode,
    @Default("") String number,
  }) = _Phone;

  factory Phone.initial() => Phone(countryCode: "", number: "");

  factory Phone.fromJson(Map<String, dynamic> json) => _$PhoneFromJson(json);
}
