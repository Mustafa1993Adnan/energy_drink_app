import 'package:energy_drink_app/screens/bookmark_screen.dart';
import 'package:energy_drink_app/screens/cart_screen.dart';
import 'package:energy_drink_app/screens/home_screen.dart';
import 'package:energy_drink_app/screens/notification_screen.dart';
import 'package:energy_drink_app/screens/profile_screen.dart';
import 'package:energy_drink_app/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants_files/constants.dart';
import '../models/offer.dart';
import '../widgets/custom_appBar.dart';
import '../widgets/offer.dart';
import '../widgets/tapController_items.dart';

class MasterScreen extends StatefulWidget {
  const MasterScreen({super.key});

  @override
  State<MasterScreen> createState() => _MasterScreenState();
}

class _MasterScreenState extends State<MasterScreen> {
  int page = 0;
  List<Widget> screens = const [
    HomeScreen(),
    CartScreen(),
    BookmarkScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pagePrimaryColor,
      extendBody: true,
      appBar: CustomAppBar(),
      bottomNavigationBar: CurvedNavigationBar(
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
              Icons.shopping_cart_outlined,
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
            backgroundImage:
                AssetImage('assets/images/unsplash_ksm0qsJcxXk.png'),
          ),
        ],
        onTap: (index) {
          setState(() {
            page = index;
          });

          //Handle button tap
        },
      ),
      body: screens[page],
    );
  }
}
