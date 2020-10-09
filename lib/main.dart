import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dddbf/application/auth/auth_cubit/auth_cubit.dart';
import 'package:flutter_dddbf/application/navigation/navigation_cubit/navigation_cubit.dart';
import 'package:flutter_dddbf/infrastructure/core/firebase/firebase_service.dart';
import 'package:flutter_dddbf/injection.dart';
import 'package:flutter_dddbf/presentation/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
              navigatorObservers: [getIt<FirebaseService>().analyticsObserver],
              title: 'Flutter DDDBF',
              theme: ThemeData(
                primarySwatch: Colors.blueGrey[800],
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              home: App(),
            );
          }
          return Center(child: Text('Firebase initializing...'));
        });
  }
}
