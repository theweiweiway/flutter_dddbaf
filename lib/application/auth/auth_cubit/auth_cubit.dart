import 'package:flutter_dddbaf/application/auth/auth_cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState.loggedOut());

  void signInWithEmailAndPassword({String email, String password}) async {
    // emit(state.copyWith(navigator: navigator));
  }

  void signIn() async {}

  void signOut() async {}
}
