// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'utm_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UtmParameters _$UtmParametersFromJson(Map<String, dynamic> json) {
  return _UtmParameters.fromJson(json);
}

class _$UtmParametersTearOff {
  const _$UtmParametersTearOff();

// ignore: unused_element
  _UtmParameters call(
      {@required String source,
      @required String medium,
      @required String name,
      String term,
      String content}) {
    return _UtmParameters(
      source: source,
      medium: medium,
      name: name,
      term: term,
      content: content,
    );
  }
}

// ignore: unused_element
const $UtmParameters = _$UtmParametersTearOff();

mixin _$UtmParameters {
  String get source;
  String get medium;
  String get name;
  String get term;
  String get content;

  Map<String, dynamic> toJson();
  $UtmParametersCopyWith<UtmParameters> get copyWith;
}

abstract class $UtmParametersCopyWith<$Res> {
  factory $UtmParametersCopyWith(
          UtmParameters value, $Res Function(UtmParameters) then) =
      _$UtmParametersCopyWithImpl<$Res>;
  $Res call(
      {String source, String medium, String name, String term, String content});
}

class _$UtmParametersCopyWithImpl<$Res>
    implements $UtmParametersCopyWith<$Res> {
  _$UtmParametersCopyWithImpl(this._value, this._then);

  final UtmParameters _value;
  // ignore: unused_field
  final $Res Function(UtmParameters) _then;

  @override
  $Res call({
    Object source = freezed,
    Object medium = freezed,
    Object name = freezed,
    Object term = freezed,
    Object content = freezed,
  }) {
    return _then(_value.copyWith(
      source: source == freezed ? _value.source : source as String,
      medium: medium == freezed ? _value.medium : medium as String,
      name: name == freezed ? _value.name : name as String,
      term: term == freezed ? _value.term : term as String,
      content: content == freezed ? _value.content : content as String,
    ));
  }
}

abstract class _$UtmParametersCopyWith<$Res>
    implements $UtmParametersCopyWith<$Res> {
  factory _$UtmParametersCopyWith(
          _UtmParameters value, $Res Function(_UtmParameters) then) =
      __$UtmParametersCopyWithImpl<$Res>;
  @override
  $Res call(
      {String source, String medium, String name, String term, String content});
}

class __$UtmParametersCopyWithImpl<$Res>
    extends _$UtmParametersCopyWithImpl<$Res>
    implements _$UtmParametersCopyWith<$Res> {
  __$UtmParametersCopyWithImpl(
      _UtmParameters _value, $Res Function(_UtmParameters) _then)
      : super(_value, (v) => _then(v as _UtmParameters));

  @override
  _UtmParameters get _value => super._value as _UtmParameters;

  @override
  $Res call({
    Object source = freezed,
    Object medium = freezed,
    Object name = freezed,
    Object term = freezed,
    Object content = freezed,
  }) {
    return _then(_UtmParameters(
      source: source == freezed ? _value.source : source as String,
      medium: medium == freezed ? _value.medium : medium as String,
      name: name == freezed ? _value.name : name as String,
      term: term == freezed ? _value.term : term as String,
      content: content == freezed ? _value.content : content as String,
    ));
  }
}

@JsonSerializable()
class _$_UtmParameters implements _UtmParameters {
  const _$_UtmParameters(
      {@required this.source,
      @required this.medium,
      @required this.name,
      this.term,
      this.content})
      : assert(source != null),
        assert(medium != null),
        assert(name != null);

  factory _$_UtmParameters.fromJson(Map<String, dynamic> json) =>
      _$_$_UtmParametersFromJson(json);

  @override
  final String source;
  @override
  final String medium;
  @override
  final String name;
  @override
  final String term;
  @override
  final String content;

  @override
  String toString() {
    return 'UtmParameters(source: $source, medium: $medium, name: $name, term: $term, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UtmParameters &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.medium, medium) ||
                const DeepCollectionEquality().equals(other.medium, medium)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(medium) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(term) ^
      const DeepCollectionEquality().hash(content);

  @override
  _$UtmParametersCopyWith<_UtmParameters> get copyWith =>
      __$UtmParametersCopyWithImpl<_UtmParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UtmParametersToJson(this);
  }
}

abstract class _UtmParameters implements UtmParameters {
  const factory _UtmParameters(
      {@required String source,
      @required String medium,
      @required String name,
      String term,
      String content}) = _$_UtmParameters;

  factory _UtmParameters.fromJson(Map<String, dynamic> json) =
      _$_UtmParameters.fromJson;

  @override
  String get source;
  @override
  String get medium;
  @override
  String get name;
  @override
  String get term;
  @override
  String get content;
  @override
  _$UtmParametersCopyWith<_UtmParameters> get copyWith;
}
