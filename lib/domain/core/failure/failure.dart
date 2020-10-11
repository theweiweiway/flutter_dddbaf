import 'package:freezed_annotation/freezed_annotation.dart';
part "failure.freezed.dart";
part "failure.g.dart";

@freezed
abstract class Failure with _$Failure {
  const factory Failure.error({
    String message,
    String error,
  }) = Error;
  const factory Failure.socketException() = SocketExceptionFailure;
  const factory Failure.internalServerError() = InternalServerError;

  factory Failure.fromJson(Map<String, dynamic> json) =>
      _$FailureFromJson(json);
}
