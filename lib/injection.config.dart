// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'infrastructure/auth/auth_analytics.dart';
import 'infrastructure/auth/remote_data/auth_api.dart';
import 'application/auth/auth_cubit/auth_cubit.dart';
import 'infrastructure/auth/auth_repository.dart';
import 'infrastructure/core/firebase/firebase_service.dart';
import 'infrastructure/core/firebase/firestore_service.dart';
import 'application/navigation/navigation_cubit/navigation_cubit.dart';
import 'application/auth/sign_up_cubit/sign_up_cubit.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<AuthCubit>(() => AuthCubit());
  gh.lazySingleton<AuthAnalytics>(() => AuthAnalytics(get<FirebaseService>()));
  gh.lazySingleton<AuthApi>(
      () => AuthApi(get<FirebaseService>(), get<FirestoreService>()));
  gh.lazySingleton<AuthRepository>(() => AuthRepository(get<AuthApi>()));
  gh.lazySingleton<SignUpCubit>(() => SignUpCubit(get<AuthRepository>()));

  // Eager singletons must be registered in the right order
  gh.singleton<FirebaseService>(FirebaseService());
  gh.singleton<FirestoreService>(FirestoreService());
  gh.singleton<NavigationCubit>(NavigationCubit());
  return get;
}
