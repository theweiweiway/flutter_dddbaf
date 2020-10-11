import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatelessWidget {
  final double bottomPadding;
  LoadingScreen({this.bottomPadding = 48});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: SpinKitFadingCircle(
        // color: Styles.tertiary,
        size: 58,
      ),
    ));
  }
}
