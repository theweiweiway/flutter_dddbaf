// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../screens/auth/auth_home.dart';

class AuthRoutes {
  static const String authHome = '/auth';
  static const all = <String>{
    authHome,
  };
}

class AuthRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(AuthRoutes.authHome, page: AuthHome),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    AuthHome: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AuthHome(),
        settings: data,
      );
    },
  };
}
