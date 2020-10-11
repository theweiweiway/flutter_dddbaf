import 'package:flutter/material.dart';

Widget slideUpTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return SlideTransition(
    position: Tween<Offset>(
      begin: const Offset(0.0, 1.0),
      end: Offset.zero,
    ).animate(animation),
    child: FadeTransition(opacity: animation, child: child),
  );
}

Widget slideRightTransition(
    BuildContext context, Animation<double> animation, Widget child) {
  animation = CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn);
  return SlideTransition(
    position: Tween<Offset>(
      begin: const Offset(0.1, 0.0),
      end: Offset.zero,
    ).animate(animation),
    child: FadeTransition(opacity: animation, child: child),
  );
}

Widget zoomInTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return ScaleTransition(scale: animation, child: child);
}
