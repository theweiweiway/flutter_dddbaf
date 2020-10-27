import 'package:freezed_annotation/freezed_annotation.dart';

part 'utm_parameters.freezed.dart';
part "utm_parameters.g.dart";

@freezed
abstract class UtmParameters with _$UtmParameters {
  const factory UtmParameters(
      {@required String source,
      @required String medium,
      @required String name,
      String term,
      String content}) = _UtmParameters;

  factory UtmParameters.fromJson(Map<String, dynamic> json) =>
      _$UtmParametersFromJson(json);
}
