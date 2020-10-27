import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  final double bottomPadding;
  LoadingScreen({this.bottomPadding = 48});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: CircularProgressIndicator(),
    ));
  }
}
