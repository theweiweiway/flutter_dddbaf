import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dddbf/domain/navigation/navigators.dart';

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

// Future<bool> handleSearchStackWillPop(
//   BuildContext context,
//   ENavigator currentNavigator,
// ) async {
//   final _navBloc = BlocProvider.of<NavBloc>(context);
//   if (currentNavigator != ENavigator.search) {
//     final isFirstRouteInCurrentTab =
//         !await navigatorKeys[currentNavigator].currentState.maybePop();
//     if (isFirstRouteInCurrentTab) {
//       _navBloc.add(NavEvent.navTap(tab: ENavigator.search));
//     }
//     return false;
//   } else
//     return true;
// }
