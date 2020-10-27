import 'package:flutter/material.dart';

class Styles {
  final BorderRadius borderRadius = BorderRadius.circular(16);

  final Color primary = Color(0xffffff00);
  final Color secondary = Color(0xffabcdef);
  final Color tertiary = Color(0xffabcdef);
  final Color lightGrey = Color(0xffabcdef);
  final Color grey = Color(0xffabcdef);
  final Color darkGrey = Color(0xffabcdef);
  final Color black = Color(0xffabcdef);

  ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.blueGrey[800],
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  ThemeData get darkTheme {
    return ThemeData(
      primarySwatch: Colors.blueGrey[800],
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
