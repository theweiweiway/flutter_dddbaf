// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NavigationStateTearOff {
  const _$NavigationStateTearOff();

// ignore: unused_element
  _NavigationState call(
      {ENavigator navigator = ENavigator.search, bool visible = true}) {
    return _NavigationState(
      navigator: navigator,
      visible: visible,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NavigationState = _$NavigationStateTearOff();

/// @nodoc
mixin _$NavigationState {
  /// This is the current navigation stack that is selected
  ENavigator get navigator;

  /// This determines whether the bottom navigation bar is visile or hidden
  bool get visible;

  $NavigationStateCopyWith<NavigationState> get copyWith;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res>;
  $Res call({ENavigator navigator, bool visible});
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  final NavigationState _value;
  // ignore: unused_field
  final $Res Function(NavigationState) _then;

  @override
  $Res call({
    Object navigator = freezed,
    Object visible = freezed,
  }) {
    return _then(_value.copyWith(
      navigator:
          navigator == freezed ? _value.navigator : navigator as ENavigator,
      visible: visible == freezed ? _value.visible : visible as bool,
    ));
  }
}

/// @nodoc
abstract class _$NavigationStateCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$NavigationStateCopyWith(
          _NavigationState value, $Res Function(_NavigationState) then) =
      __$NavigationStateCopyWithImpl<$Res>;
  @override
  $Res call({ENavigator navigator, bool visible});
}

/// @nodoc
class __$NavigationStateCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res>
    implements _$NavigationStateCopyWith<$Res> {
  __$NavigationStateCopyWithImpl(
      _NavigationState _value, $Res Function(_NavigationState) _then)
      : super(_value, (v) => _then(v as _NavigationState));

  @override
  _NavigationState get _value => super._value as _NavigationState;

  @override
  $Res call({
    Object navigator = freezed,
    Object visible = freezed,
  }) {
    return _then(_NavigationState(
      navigator:
          navigator == freezed ? _value.navigator : navigator as ENavigator,
      visible: visible == freezed ? _value.visible : visible as bool,
    ));
  }
}

/// @nodoc
class _$_NavigationState implements _NavigationState {
  const _$_NavigationState(
      {this.navigator = ENavigator.search, this.visible = true})
      : assert(navigator != null),
        assert(visible != null);

  @JsonKey(defaultValue: ENavigator.search)
  @override

  /// This is the current navigation stack that is selected
  final ENavigator navigator;
  @JsonKey(defaultValue: true)
  @override

  /// This determines whether the bottom navigation bar is visile or hidden
  final bool visible;

  @override
  String toString() {
    return 'NavigationState(navigator: $navigator, visible: $visible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NavigationState &&
            (identical(other.navigator, navigator) ||
                const DeepCollectionEquality()
                    .equals(other.navigator, navigator)) &&
            (identical(other.visible, visible) ||
                const DeepCollectionEquality().equals(other.visible, visible)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigator) ^
      const DeepCollectionEquality().hash(visible);

  @override
  _$NavigationStateCopyWith<_NavigationState> get copyWith =>
      __$NavigationStateCopyWithImpl<_NavigationState>(this, _$identity);
}

abstract class _NavigationState implements NavigationState {
  const factory _NavigationState({ENavigator navigator, bool visible}) =
      _$_NavigationState;

  @override

  /// This is the current navigation stack that is selected
  ENavigator get navigator;
  @override

  /// This determines whether the bottom navigation bar is visile or hidden
  bool get visible;
  @override
  _$NavigationStateCopyWith<_NavigationState> get copyWith;
}
