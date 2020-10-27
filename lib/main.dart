import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dddbaf/application/auth/auth_cubit/auth_cubit.dart';
import 'package:flutter_dddbaf/application/navigation/navigation_cubit/navigation_cubit.dart';
import 'package:flutter_dddbaf/infrastructure/core/firebase/firebase_service.dart';
import 'package:flutter_dddbaf/injection.dart';
import 'package:flutter_dddbaf/presentation/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dddbaf/presentation/widgets/core/screens/loading_screen.dart';
import 'package:flutter_dddbaf/styles.dart';
import 'package:injectable/injectable.dart';

final env = kReleaseMode ? Environment.prod : Environment.test;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(env);
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => getIt<NavigationCubit>()),
    BlocProvider(create: (context) => getIt<AuthCubit>()),
  ], child: MainApp()));
}

class MainApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Firebase initialize app error'));
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              title: "Flutter DDDBF",
              debugShowCheckedModeBanner: env == Environment.dev ? true : false,
              navigatorObservers: [getIt<FirebaseService>().analyticsObserver],
              theme: Styles().lightTheme,
              darkTheme: Styles().darkTheme,
              home: App(),
            );
          }
          return LoadingScreen();
        });
  }
}
