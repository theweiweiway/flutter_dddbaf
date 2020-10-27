import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dddbaf/application/auth/auth_cubit/auth_cubit.dart';
import 'package:flutter_dddbaf/application/auth/auth_cubit/auth_state.dart';
import 'package:flutter_dddbaf/application/navigation/navigation_cubit/navigation_cubit.dart';
import 'package:flutter_dddbaf/application/navigation/navigation_cubit/navigation_state.dart';
import 'package:flutter_dddbaf/application/navigation/will_pop_handlers.dart';
import 'package:flutter_dddbaf/domain/navigation/navigators.dart';
import 'package:flutter_dddbaf/infrastructure/core/firebase/firebase_service.dart';
import 'package:flutter_dddbaf/injection.dart';
import 'package:flutter_dddbaf/presentation/navigation/auth/auth_navigator.dart';
import 'package:flutter_dddbaf/presentation/navigation/widgets/fade_through_indexed_stack.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  // Keeps track of which navigation stacks have already been opened
  Set<ENavigator> touched = new Set();
  AuthCubit _authCubit;
  NavigationCubit _navigationCubit;
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _authCubit = BlocProvider.of<AuthCubit>(context);
    _navigationCubit = BlocProvider.of<NavigationCubit>(context);

    // Handle authentication state changes here
    getIt<FirebaseService>().auth.authStateChanges().listen((User user) {
      if (user == null) {
        _authCubit.signOut();
      } else {
        _authCubit.signIn();
      }
    });

    // handleDynamicLinks(context: context);
    // handleFcmNotif(context: context);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      touched.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthCubit, AuthState>(
        listenWhen: (previous, current) {
          if (previous is LoggedIn && current is LoggedOut) {
            touched.clear();
            // change the navigator to the auth navigator when user becomes logged out
            _navigationCubit.changeNavigator(ENavigator.auth);
          }
          if (previous is LoggedOut && current is LoggedIn) {
            _firebaseMessaging.requestNotificationPermissions();
            touched.remove(ENavigator.auth);
            // change the navigator to the primary search navigator when user becomes logged in
            _navigationCubit.changeNavigator(ENavigator.search);
          }
          return false;
        },
        listener: (context, state) async {},
        builder: (BuildContext authContext, AuthState authState) {
          return BlocConsumer<NavigationCubit, NavigationState>(
            listener:
                (BuildContext context, NavigationState navigationState) {},
            builder: (BuildContext context, NavigationState navigationState) {
              return WillPopScope(
                onWillPop: () async {
                  return await handleAppWillPop(
                      context, navigationState.navigator);
                },
                child: FadeThroughIndexedStack(
                  index: _getCurrentIndex(authState, navigationState),
                  children: <Widget>[
                    _getNavigatorWidget(ENavigator.auth, AuthNavigator()),
                    // _getNavigatorWidget(ENavigator.auth, SearchNavigator()),
                    // _getNavigatorWidget(ENavigator.account, AccountNavigator()),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _getNavigatorWidget(ENavigator navigator, Widget widget) {
    return touched.contains(navigator) ? widget : Container();
  }

  int _getCurrentIndex(AuthState authState, NavigationState navigationState) {
    var index;
    switch (navigationState.navigator) {
      case ENavigator.auth:
        touched.add(ENavigator.auth);
        index = 0;
        break;
      case ENavigator.search:
        index = 1;
        break;
      case ENavigator.account:
        authState.map(loggedIn: (value) {
          touched.add(ENavigator.account);
          index = 2;
        }, loggedOut: (value) {
          touched.add(ENavigator.auth);
          index = 0;
        });
        break;
      default:
        index = 1;
    }
    return index;
  }
}
