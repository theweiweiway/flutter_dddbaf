import 'package:flutter_dddbf/domain/auth/auth_failure/auth_failure.dart';
import 'package:flutter_dddbf/infrastructure/core/firebase/firebase_service.dart';
import 'package:flutter_dddbf/infrastructure/core/firebase/firestore_service.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dddbf/infrastructure/core/shared_preferences/shared_preferences_service.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthApi {
  FirebaseService _firebaseService;
  FirestoreService _firestoreService;
  SharedPreferencesService _sharedPreferencesService;
  AuthApi(this._firebaseService, this._firestoreService,
      this._sharedPreferencesService);

  /// creates account AND THEN signs the user into that account
  Future<Either<AuthFailure, UserCredential>> createUserWithEmailAndPassword(
      String email, String password, String username) async {
    final prefs = await _sharedPreferencesService.getPrefs();
    try {
      UserCredential userCredential = await _firebaseService.auth
          .createUserWithEmailAndPassword(email: email, password: password);
      await _firestoreService.collections.users
          .doc(userCredential.user.uid)
          .set({
        "uid": userCredential.user.uid,
        "utm": {
          "campaign": prefs.getString('utm_campaign'),
          "source": prefs.getString('utm_source'),
          "medium": prefs.getString('utm_medium')
        }
      });
      return right(userCredential);
    } on FirebaseAuthException catch (e) {
      return left(mapFirebaseAuthErrorToAuthFailure(e.code));
    } catch (e) {
      return left(AuthFailure.genericError());
    }
  }

  Future<Either<AuthFailure, UserCredential>> signInWithEmailAndPassword(
      {String email, String password}) async {
    try {
      UserCredential userCredential = await _firebaseService.auth
          .signInWithEmailAndPassword(email: email, password: password);
      return right(userCredential);
    } on FirebaseAuthException catch (e) {
      return left(mapFirebaseAuthErrorToAuthFailure(e.code));
    } catch (e) {
      return left(AuthFailure.genericError());
    }
  }

  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail(
      {String email, String password}) async {
    try {
      await _firebaseService.auth.sendPasswordResetEmail(email: email);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(AuthFailure.genericError());
    } catch (e) {
      return left(AuthFailure.genericError());
    }
  }

  Future<Either<AuthFailure, Unit>> sendEmailVerification() async {
    try {
      User user = _firebaseService.auth.currentUser;
      if (!user.emailVerified) {
        await user.sendEmailVerification();
      }
      return right(unit);
    } catch (e) {
      return left(AuthFailure.genericError());
    }
  }

  /// Apply the action code received in email or SMS to perform actions such as verifying a user's email address
  Future<Either<AuthFailure, Unit>> applyActionCode(String code) async {
    try {
      FirebaseAuth auth = _firebaseService.auth;
      await auth.checkActionCode(code);
      await auth.applyActionCode(code);
      auth.currentUser.reload();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(mapFirebaseAuthErrorToAuthFailure(e.code));
    } catch (e) {
      return left(AuthFailure.genericError());
    }
  }

  Future<Either<AuthFailure, Unit>> confirmPasswordReset(
      {String code, String newPassword}) async {
    try {
      await _firebaseService.auth
          .confirmPasswordReset(code: code, newPassword: newPassword);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(mapFirebaseAuthErrorToAuthFailure(e.code));
    } catch (e) {
      return left(AuthFailure.genericError());
    }
  }

  Future<Either<AuthFailure, Unit>> reauthenticateUser(
      {String email, String password}) async {
    try {
      EmailAuthCredential credential =
          EmailAuthProvider.credential(email: email, password: password);
      await _firebaseService.auth.currentUser
          .reauthenticateWithCredential(credential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(AuthFailure.genericError());
    } catch (e) {
      return left(AuthFailure.genericError());
    }
  }

  Future<Unit> signOut() async {
    await _firebaseService.auth.signOut();
    return unit;
  }

  /// Turn the incoming firebase auth error code into an AuthFailure class. Currently handles:
  /// - expired-action-code
  /// - invalid-action-code
  /// - user-disabled
  /// - user-not-found
  /// - weak-password
  /// - wrong-password
  /// - email-already-in-use
  /// - invalid-email
  /// and the generic case which is `genericError`
  AuthFailure mapFirebaseAuthErrorToAuthFailure(String code) {
    if (code == 'expired-action-code') {
      return AuthFailure.expiredActionCode();
    }
    if (code == 'invalid-action-code') {
      return AuthFailure.invalidActionCode();
    }
    if (code == 'user-disabled') {
      return AuthFailure.userDisabled();
    }
    if (code == 'user-not-found') {
      return AuthFailure.userNotFound();
    }
    if (code == 'weak-password') {
      return AuthFailure.weakPassword();
    }
    if (code == 'wrong-password') {
      return AuthFailure.wrongPassword();
    }
    if (code == 'email-already-in-use') {
      return AuthFailure.emailAlreadyInUse();
    }
    if (code == 'invalid-email') {
      return AuthFailure.emailAlreadyInUse();
    }
    return AuthFailure.genericError();
  }
}
