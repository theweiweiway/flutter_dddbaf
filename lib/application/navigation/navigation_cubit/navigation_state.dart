import 'package:flutter/material.dart';
import 'package:flutter_dddbf/domain/navigation/navigators.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "navigation_state.freezed.dart";

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState({
    @Default(ENavigator.search) ENavigator navigator,
    @Default(true) bool visible,
    List<Page> authPages,
    List<Page> accountPages,
    List<Page> searchPages,
  }) = _NavigationState;

  factory NavigationState.initial() => NavigationState(
        navigator: ENavigator.search,
        visible: true,
      );
}
