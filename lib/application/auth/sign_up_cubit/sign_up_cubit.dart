import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dddbaf/application/auth/sign_up_cubit/sign_up_state.dart';
import 'package:flutter_dddbaf/infrastructure/auth/auth_repository.dart';
import 'package:flutter_dddbaf/presentation/navigation/screens.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SignUpCubit extends Cubit<SignUpState> {
  AuthRepository _authRepository;
  SignUpCubit(this._authRepository) : super(SignUpState.initial());

  void addEmail(String email) async {
    // final r = await _authRepository.checkIfEmailInUse(email);
    // emit(
    //   r.fold(
    //     (l) => state.copyWith(authFailure: l, success: null, redirectTo: null),
    //     (r) => state.copyWith(email: email, redirectTo: EScreen.signUpUsername),
    //   ),
    // );
  }

  void addUsername(String username) async {
    // final r = await _authRepository.checkIfUsernameInUse(username);
    // emit(
    //   r.fold(
    //     (l) => state.copyWith(authFailure: l, success: null, redirectTo: null),
    //     (r) => state.copyWith(
    //         username: username, redirectTo: EScreen.signUpPassword),
    //   ),
    // );
  }

  void addPassword(String password) async {
    // if password valid, do here. Else, throw failure
    // emit(state.copyWith(password: password, success: null, redirectTo: null));
  }
}
