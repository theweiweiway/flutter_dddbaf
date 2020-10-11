import 'package:freezed_annotation/freezed_annotation.dart';
part "success.freezed.dart";
part "success.g.dart";

@freezed
abstract class Success with _$Success {
  const factory Success({
    String message,
  }) = _Success;

  factory Success.fromJson(Map<String, dynamic> json) =>
      _$SuccessFromJson(json);
}
