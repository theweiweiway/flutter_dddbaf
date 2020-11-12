import 'package:flutter_dddbaf/presentation/navigation/navigators.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "navigation_state.freezed.dart";

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState({
    /// This is the current navigation stack that is selected
    @Default(ENavigator.search) ENavigator navigator,

    /// This determines whether the bottom navigation bar is visile or hidden
    @Default(true) bool visible,
  }) = _NavigationState;
}
