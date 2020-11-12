import 'package:freezed_annotation/freezed_annotation.dart';

part 'thumbnail.freezed.dart';
part "thumbnail.g.dart";

@freezed
abstract class Thumbnail with _$Thumbnail {
  const Thumbnail._();

  const factory Thumbnail({
    @Default("") String small,
    @Default("") String large,
  }) = _Thumbnail;

  factory Thumbnail.initial() => Thumbnail(
        small: "",
        large: "",
      );

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);
}
