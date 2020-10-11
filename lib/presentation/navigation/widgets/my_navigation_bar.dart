// import 'package:badges/badges.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:honeybee_mobile/application/auth/auth_bloc/auth_bloc.dart';
// import 'package:honeybee_mobile/application/navigation/enums/screen_enum.dart';
// import 'package:honeybee_mobile/application/navigation/nav_bloc/nav_bloc.dart';
// import 'package:honeybee_mobile/application/google_analytics/route_aware_mixin.dart';
// import 'package:honeybee_mobile/styles.dart';

// class NavItem {
//   final IconData icon;
//   final ENav tab;
//   final String name;
//   NavItem(this.icon, this.tab, this.name);
// }

// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }

// /*Displays the bottom bar */
// class _BottomNavBarState extends State<BottomNavBar>  {
//   @override
//   NavigationCubit _navBloc;
//   final List<NavItem> _items = [
//     NavItem(Icons.search, ENav.search, 'Search'),
//     NavItem(Icons.favorite_border, ENav.saved_studies, 'Saved'),
//     NavItem(Icons.message, ENav.messaging, 'Chat'),
//     NavItem(Icons.account_circle, ENav.account, 'Profile'),
//   ];

//   double _getSize(ENav tab) {
//     return 26.0;
//   }

//   Color _getColour(ENav tab, ENav selectedTab) {
//     return (tab == selectedTab) ? Styles.tertiary : Colors.black54;
//   }

//   void _handleTap(ENav tab) async {
//     _navBloc.add(NavEvent.navTap(tab: tab));
//     swapTab(tab);
//   }

//   @override
//   Widget build(BuildContext context) {
//     _navBloc = BlocProvider.of<NavBloc>(context);

//     return BlocBuilder<AuthBloc, AuthState>(builder: (context, authState) {
//       return Center(
//         child: AnimatedOpacity(
//           opacity: _navBloc.state.isVisible ? 1 : 0,
//           duration: Duration(milliseconds: 250),
//           child: Container(
//             padding: EdgeInsets.symmetric(vertical: 0),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.vertical(
//                 top: Radius.circular(12),
//               ),
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   blurRadius: 5,
//                   spreadRadius: 2,
//                   offset: Offset(0, 1.5),
//                   color: Colors.black26,
//                 )
//               ],
//             ),
//             width: MediaQuery.of(context).size.width, // - 6
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 32.0),
//               child: SafeArea(
//                 top: false,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     ..._items
//                         .map(
//                           (item) => GestureDetector(
//                             onTap: () => _handleTap(item.tab),
//                             child: Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(vertical: 8.0),
//                               child: Column(
//                                 children: <Widget>[
//                                   Badge(
//                                     badgeContent: Text(
//                                       " ",
//                                     ),
//                                     badgeColor: Styles.secondary,
//                                     showBadge: item.tab == ENav.messaging &&
//                                         authState.map(
//                                             loggedIn: (val) {
//                                               return val.unreads != null &&
//                                                       val.unreads > 0
//                                                   ? true
//                                                   : false;
//                                             },
//                                             loggedOut: (_) => false),
//                                     child: Icon(item.icon,
//                                         size: _getSize(item.tab),
//                                         color: _getColour(item.tab,
//                                             _navBloc.state.currNavigator)),
//                                   ),
//                                   Text(
//                                     item.name,
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .bodyText2
//                                         .copyWith(
//                                           color: _getColour(item.tab,
//                                               _navBloc.state.currNavigator),
//                                         ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         )
//                         .toList(),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       );
//     });
//   }
// }
