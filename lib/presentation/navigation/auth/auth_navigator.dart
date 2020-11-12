import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dddbaf/application/auth/sign_up_cubit/sign_up_cubit.dart';
import 'package:flutter_dddbaf/presentation/navigation/navigators.dart';
import 'package:flutter_dddbaf/injection.dart';
import 'package:flutter_dddbaf/presentation/navigation/auth/auth_router.gr.dart';

class AuthNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<SignUpCubit>()),
      ],
      child: ExtendedNavigator(
          router: AuthRouter(),
          key: navigatorKeys[ENavigator.auth],
          name: ENavigator.auth.toString()),
    );
  }
}
