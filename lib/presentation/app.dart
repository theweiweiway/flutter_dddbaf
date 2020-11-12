import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dddbaf/application/auth/auth_cubit/auth_cubit.dart';
import 'package:flutter_dddbaf/application/auth/auth_cubit/auth_state.dart';
import 'package:flutter_dddbaf/application/core/dynamic_links_handler.dart';
import 'package:flutter_dddbaf/application/core/push_notifications_handler.dart';
import 'package:flutter_dddbaf/application/navigation/navigation_cubit/navigation_cubit.dart';
import 'package:flutter_dddbaf/application/navigation/navigation_cubit/navigation_state.dart';
import 'package:flutter_dddbaf/application/navigation/will_pop_handlers.dart';
import 'package:flutter_dddbaf/presentation/navigation/navigators.dart';
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

    /// Handle authentication state changes here
    getIt<FirebaseService>().auth.authStateChanges().listen((User user) {
      if (user == null) {
        _authCubit.signOut();
      } else {
        _authCubit.signIn();
      }
    });

    /// Handle dynamic links and push notifications here
    dynamicLinksHandler(context: context);
    pushNotificationsHandler(context: context);
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
            // Change the navigator to the auth navigator stack when user becomes logged out
            _navigationCubit.changeNavigator(ENavigator.auth);
          }
          if (previous is LoggedOut && current is LoggedIn) {
            _firebaseMessaging.requestNotificationPermissions();
            touched.remove(ENavigator.auth);

            /// Change the navigator to the primary search navigator stack when user becomes logged in
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

  /// Only renders the stack if the user has physically pressed the stack.
  /// This helps to prevent all stacks from initializing at the same time on app startup.
  Widget _getNavigatorWidget(ENavigator navigator, Widget widget) {
    return touched.contains(navigator) ? widget : Container();
  }

  /// Get the current index of the indexed stack based on what the authentication and navigator state is.
  /// This is a good place to add logic for protecting certain navigation stacks (for example, account
  /// navigator can only be accessed when the user is logged in). This method gives more flexibility than
  /// Route Guards in the auto_route package
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
