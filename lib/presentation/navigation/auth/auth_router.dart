import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_dddbf/presentation/screens/auth/auth_home.dart';

@MaterialAutoRouter(routesClassName: "AuthRoutes", routes: <AutoRoute>[
  MaterialRoute(page: AuthHome, initial: true, name: "authHome", path: "/auth"),
])
class $AuthRouter {}
