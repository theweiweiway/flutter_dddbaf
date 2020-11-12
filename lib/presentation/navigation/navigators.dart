import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

enum ENavigator {
  @JsonValue('SEARCH')
  search,
  @JsonValue('ACCOUNT')
  account,
  @JsonValue('AUTH')
  auth,
}

final navigatorKeys = <ENavigator, GlobalKey<ExtendedNavigatorState>>{
  ENavigator.auth: GlobalKey<ExtendedNavigatorState>(),
  ENavigator.search: GlobalKey<ExtendedNavigatorState>(),
  ENavigator.account: GlobalKey<ExtendedNavigatorState>(),
};
