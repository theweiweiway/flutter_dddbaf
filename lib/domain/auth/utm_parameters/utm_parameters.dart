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
    if ((this.source != null && this.source.isNotEmpty) ||
        (this.medium != null && this.medium.isNotEmpty) ||
        (this.campaign != null && this.campaign.isNotEmpty)) {
      var box = Hive.box('utmParameters');
      box.put('source', this.source);
      box.put('medium', this.medium);
      box.put('campaign', this.campaign);
      box.put('term', this.term);
      box.put('content', this.content);
    }
  }

  UtmParameters readFromHive() {
    var box = Hive.box('utmParameters');
    if ((box.get('source') != null && box.get('source').isNotEmpty) ||
        (box.get('medium') != null && box.get('medium').isNotEmpty) ||
        (box.get('campaign') != null && box.get('campaign').isNotEmpty)) {
      return null;
    } else {
      return UtmParameters(
        source: box.get('source'),
        medium: box.get('medium'),
        campaign: box.get('campaign'),
        term: box.get('term'),
        content: box.get('content'),
      );
    }
  }
}
