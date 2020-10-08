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
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error'));
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              title: 'Flutter DDDBF',
              theme: ThemeData(
                primarySwatch: Colors.blueGrey[800],
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              home: MyApp(),
            );
          }
          return Center(child: Text('Loading'));
        });
  }
}
