import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "navigation_state.freezed.dart";

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState({
    @Default(ENavigator.search) ENavigator navigator,
    @Default(true) bool visible,
    List<Page> authPages,
    List<Page> accountPages,
  }) = _NavigationState;
  factory NavigationState.initial() => NavigationState(
        navigator: ENavigator.search,
        visible: true,
      );
}

enum ENavigator {
  @JsonValue('SEARCH')
  search,
  @JsonValue('ACCOUNT')
  account,
  @JsonValue('AUTH')
  auth,
}
