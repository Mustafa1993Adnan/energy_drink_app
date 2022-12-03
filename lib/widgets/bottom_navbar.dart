import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../constants_files/constants.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  static int page = 0;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: page,
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: turquoiseColor,
      color: Colors.white,
      items: <Widget>[
        Padding(
          padding: page == 0
              ? const EdgeInsets.all(10.0)
              : const EdgeInsets.all(0.0),
          child: Icon(
            Icons.home_filled,
            size: page == 0 ? 35 : 30,
            color: page == 0 ? Colors.white : navBtnGreyColor,
          ),
        ),
        Padding(
          padding: page == 1
              ? const EdgeInsets.all(10.0)
              : const EdgeInsets.all(0.0),
          child: Icon(
            Icons.shopping_bag_outlined,
            size: page == 1 ? 35 : 30,
            color: page == 1 ? Colors.white : navBtnGreyColor,
          ),
        ),
        Padding(
          padding: page == 2
              ? const EdgeInsets.all(10.0)
              : const EdgeInsets.all(0.0),
          child: Icon(
            Icons.bookmark_outline_rounded,
            size: page == 2 ? 35 : 30,
            color: page == 2 ? Colors.white : navBtnGreyColor,
          ),
        ),
        Padding(
          padding: page == 3
              ? const EdgeInsets.all(10.0)
              : const EdgeInsets.all(0.0),
          child: Icon(
            Icons.notifications_none_rounded,
            size: page == 3 ? 35 : 30,
            color: page == 3 ? Colors.white : navBtnGreyColor,
          ),
        ),
        const CircleAvatar(
          // radius: 0,
          backgroundImage: AssetImage('assets/images/unsplash_ksm0qsJcxXk.png'),
        ),
      ],
      onTap: (index) {
        setState(() {
          page = index;
        });

        //Handle button tap
      },
    );
  }
}

//
// class NavBarIcons extends StatelessWidget {
//   final int currentPage;
//   final Icon itemIcon;
//   const NavBarIcons(
//       {super.key, required this.currentPage, required this.itemIcon});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: _page == currentPage
//           ? const EdgeInsets.all(12.0)
//           : const EdgeInsets.all(0.0),
//       child: Icon(
//         Icons.shopping_bag_outlined,
//         size: _page == 1 ? 35 : 30,
//         color: _page == 1 ? Colors.white : navBtnGreyColor,
//       ),
//     );
//   }
// }
