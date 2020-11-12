import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dddbaf/application/navigation/navigation_cubit/navigation_cubit.dart';
import 'package:flutter_dddbaf/presentation/navigation/navigators.dart';

/// Navigate to a specific navigation stack or screen with a Uri obtained in a
/// deep link or push notification
void navigateViaUri(Uri uri, BuildContext context) {
  if (RegExp("account").hasMatch(uri.path)) {
    context.watch<NavigationCubit>().changeNavigator(ENavigator.account);
  }
}
