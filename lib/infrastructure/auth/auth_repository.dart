import 'package:flutter_dddbf/domain/auth/auth_failure/auth_failure.dart';
import 'package:flutter_dddbf/infrastructure/auth/remote_data/auth_api.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthRepository {
  AuthApi _authApi;
  AuthRepository(this._authApi);

  Future<Either<AuthFailure, UserCredential>> createUserWithEmailAndPassword(
      String email, String password, String username) async {
    return await _authApi.createUserWithEmailAndPassword(
        email, password, username);
  }
}
