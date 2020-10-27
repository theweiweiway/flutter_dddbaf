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
      {ENavigator navigator = ENavigator.search,
      bool visible = true,
      List<Page> authPages,
      List<Page> accountPages,
      List<Page> searchPages}) {
    return _NavigationState(
      navigator: navigator,
      visible: visible,
      authPages: authPages,
      accountPages: accountPages,
      searchPages: searchPages,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NavigationState = _$NavigationStateTearOff();

/// @nodoc
mixin _$NavigationState {
  ENavigator get navigator;
  bool get visible;
  List<Page> get authPages;
  List<Page> get accountPages;
  List<Page> get searchPages;

  $NavigationStateCopyWith<NavigationState> get copyWith;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res>;
  $Res call(
      {ENavigator navigator,
      bool visible,
      List<Page> authPages,
      List<Page> accountPages,
      List<Page> searchPages});
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
    Object authPages = freezed,
    Object accountPages = freezed,
    Object searchPages = freezed,
  }) {
    return _then(_value.copyWith(
      navigator:
          navigator == freezed ? _value.navigator : navigator as ENavigator,
      visible: visible == freezed ? _value.visible : visible as bool,
      authPages:
          authPages == freezed ? _value.authPages : authPages as List<Page>,
      accountPages: accountPages == freezed
          ? _value.accountPages
          : accountPages as List<Page>,
      searchPages: searchPages == freezed
          ? _value.searchPages
          : searchPages as List<Page>,
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
  $Res call(
      {ENavigator navigator,
      bool visible,
      List<Page> authPages,
      List<Page> accountPages,
      List<Page> searchPages});
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
    Object authPages = freezed,
    Object accountPages = freezed,
    Object searchPages = freezed,
  }) {
    return _then(_NavigationState(
      navigator:
          navigator == freezed ? _value.navigator : navigator as ENavigator,
      visible: visible == freezed ? _value.visible : visible as bool,
      authPages:
          authPages == freezed ? _value.authPages : authPages as List<Page>,
      accountPages: accountPages == freezed
          ? _value.accountPages
          : accountPages as List<Page>,
      searchPages: searchPages == freezed
          ? _value.searchPages
          : searchPages as List<Page>,
    ));
  }
}

/// @nodoc
class _$_NavigationState implements _NavigationState {
  const _$_NavigationState(
      {this.navigator = ENavigator.search,
      this.visible = true,
      this.authPages,
      this.accountPages,
      this.searchPages})
      : assert(navigator != null),
        assert(visible != null);

  @JsonKey(defaultValue: ENavigator.search)
  @override
  final ENavigator navigator;
  @JsonKey(defaultValue: true)
  @override
  final bool visible;
  @override
  final List<Page> authPages;
  @override
  final List<Page> accountPages;
  @override
  final List<Page> searchPages;

  @override
  String toString() {
    return 'NavigationState(navigator: $navigator, visible: $visible, authPages: $authPages, accountPages: $accountPages, searchPages: $searchPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NavigationState &&
            (identical(other.navigator, navigator) ||
                const DeepCollectionEquality()
                    .equals(other.navigator, navigator)) &&
            (identical(other.visible, visible) ||
                const DeepCollectionEquality()
                    .equals(other.visible, visible)) &&
            (identical(other.authPages, authPages) ||
                const DeepCollectionEquality()
                    .equals(other.authPages, authPages)) &&
            (identical(other.accountPages, accountPages) ||
                const DeepCollectionEquality()
                    .equals(other.accountPages, accountPages)) &&
            (identical(other.searchPages, searchPages) ||
                const DeepCollectionEquality()
                    .equals(other.searchPages, searchPages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigator) ^
      const DeepCollectionEquality().hash(visible) ^
      const DeepCollectionEquality().hash(authPages) ^
      const DeepCollectionEquality().hash(accountPages) ^
      const DeepCollectionEquality().hash(searchPages);

  @override
  _$NavigationStateCopyWith<_NavigationState> get copyWith =>
      __$NavigationStateCopyWithImpl<_NavigationState>(this, _$identity);
}

abstract class _NavigationState implements NavigationState {
  const factory _NavigationState(
      {ENavigator navigator,
      bool visible,
      List<Page> authPages,
      List<Page> accountPages,
      List<Page> searchPages}) = _$_NavigationState;

  @override
  ENavigator get navigator;
  @override
  bool get visible;
  @override
  List<Page> get authPages;
  @override
  List<Page> get accountPages;
  @override
  List<Page> get searchPages;
  @override
  _$NavigationStateCopyWith<_NavigationState> get copyWith;
}
