import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dddbaf/domain/navigation/navigators.dart';
import 'navigation_cubit/navigation_cubit.dart';

void _selectTab(BuildContext context, ENavigator currentNavigator) {
  final NavigationCubit _navigationCubit =
      BlocProvider.of<NavigationCubit>(context);
  if (currentNavigator == ENavigator.search) {
    navigatorKeys[ENavigator.search]
        .currentState
        .popUntil((route) => route.isFirst);
  } else {
    _navigationCubit.changeNavigator(ENavigator.search);
  }
}

/// Handles the android back button when the user is at the root of any navigation
/// stack, ensuring that the app always pops to the first navigator (Search stack) before
/// exiting the app
Future<bool> handleAppWillPop(
  BuildContext context,
  ENavigator currentNavigator,
) async {
  if (navigatorKeys[ENavigator.auth].currentState != null) {
    final shouldPop =
        !await navigatorKeys[ENavigator.auth].currentState.maybePop();
    if (shouldPop == true) {
      _selectTab(context, currentNavigator);
      return false;
    } else {
      return shouldPop;
    }
  } else {
    final isFirstRouteInCurrentTab =
        !await navigatorKeys[currentNavigator].currentState.maybePop();
    if (isFirstRouteInCurrentTab) {
      if (currentNavigator != ENavigator.search) {
        _selectTab(context, currentNavigator);
        return false;
      }
    }
    return isFirstRouteInCurrentTab;
  }
}
