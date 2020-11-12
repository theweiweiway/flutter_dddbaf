import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'utm_parameters.freezed.dart';
part "utm_parameters.g.dart";

@freezed
abstract class UtmParameters with _$UtmParameters {
  const UtmParameters._();
  const factory UtmParameters({
    String source,
    String medium,
    String campaign,
    String term,
    String content,
  }) = _UtmParameters;

  factory UtmParameters.fromJson(Map<String, dynamic> json) =>
      _$UtmParametersFromJson(json);

  void writeToHive() {
    var box = Hive.box('utmParameters');
    box.put('source', this.source);
    box.put('medium', this.medium);
    box.put('campaign', this.campaign);
    box.put('term', this.term);
    box.put('content', this.content);
  }

  UtmParameters readFromHive() {
    var box = Hive.box('utmParameters');
    return UtmParameters(
      source: box.get('source'),
      medium: box.get('medium'),
      campaign: box.get('campaign'),
      term: box.get('term'),
      content: box.get('content'),
    );
  }
}
