import 'package:get_it/get_it.dart';
import 'package:flutter_dddbaf/injection.config.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureDependencies(String env) => $initGetIt(getIt, environment: env);
