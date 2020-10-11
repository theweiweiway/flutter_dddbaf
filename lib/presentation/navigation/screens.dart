import 'package:freezed_annotation/freezed_annotation.dart';

part "screens.freezed.dart";
part "screens.g.dart";

/*find a way to make this a 'part of' some file*/

@freezed
abstract class EScreen with _$EScreen {
  const factory EScreen(final String label) = _EScreen;

  // SEARCH ROUTES
  static const searchHome = EScreen("searchHome");
  static const search = EScreen("search");

  // SIGN UP ROUTES
  static const signUpEmail = EScreen("signUpEmail");
  static const signUpUsername = EScreen("signUpUsername");
  static const signUpPassword = EScreen("signUpPassword");

  // ACCOUNT ROUTES
  static const accountHome = EScreen("accountHome");
  static const accountProfile = EScreen("accountProfile");
  static const accountSecurity = EScreen("accountSecurity");
  static const accountSettings = EScreen("accountSettings");

  factory EScreen.fromJson(String val) => EScreen(val);

  // static String enumToAutoRouteString(EScreen e) {
  //   RegExp pattern = RegExp(r'(?<=[a-z])[A-Z]');
  //   String result = e.label
  //       .toString()
  //       .replaceAllMapped(pattern, (Match m) => ('-' + m.group(0)))
  //       .toLowerCase();
  //   return "/" + result;
  // }
}
