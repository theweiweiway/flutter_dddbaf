// import 'package:flutter/material.dart';
// import 'package:honeybee_mobile/presentation/widgets/navigation/bottom_nav_bar.dart';

// class BottomNavBarScaffold extends StatefulWidget {
//   final Widget mainScreen;
//   final double topPositionedOffset;
//   final double bottomPositionedOffset;
//   BottomNavBarScaffold(
//       {this.topPositionedOffset = 0,
//       this.bottomPositionedOffset = 0,
//       @required this.mainScreen})
//       : super();
//   @override
//   _BottomNavBarScaffoldState createState() => _BottomNavBarScaffoldState();
// }

// /* Wraps the main screen to be shown with a  bottomBar below it*/
// class _BottomNavBarScaffoldState extends State<BottomNavBarScaffold> {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         // widget.mainScreen,
//         Positioned(
//           left: 0,
//           right: 0,
//           bottom: widget.bottomPositionedOffset,
//           top: widget.topPositionedOffset,
//           child: widget.mainScreen,
//         ),
//         Positioned(
//           left: 0,
//           right: 0,
//           bottom: 0,
//           child: AnimatedSwitcher(
//               child: BottomNavBar(), duration: Duration(milliseconds: 300)),
//         ),
//       ],
//     );
//   }
// }
