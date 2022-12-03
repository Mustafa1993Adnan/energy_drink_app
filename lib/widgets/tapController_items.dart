import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:energy_drink_app/widgets/tabBarView_items.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants_files/constants.dart';

class TabControllerItems extends StatelessWidget {
  const TabControllerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ButtonsTabBar(
                contentPadding: const EdgeInsets.only(
                  left: 7,
                  right: 21,
                ),
                radius: 28,
                height: 6.5.h,
                backgroundColor: turquoiseColor,
                unselectedBackgroundColor: Colors.white,
                unselectedLabelStyle: customGoogleFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: greyColor),
                labelStyle: customGoogleFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
                tabs: [
                  Tab(
                    icon: CircleAvatar(
                      // radius: 15,
                      backgroundColor: Color(0xFFF8F8F8),

                      child: ClipOval(
                        // clipBehavior: Clip.none,
                        child: Image.asset('assets/images/canTurq.png'),
                      ),
                    ),
                    text: " 1 pack",
                  ),
                  Tab(
                    icon: CircleAvatar(
                      // radius: 15,
                      backgroundColor: Color(0xFFF8F8F8),
                      child: ClipOval(
                        // clipBehavior: Clip.none,
                        child: Image.asset('assets/images/canTurqRed.png'),
                      ),
                    ),
                    text: " 2 pack",
                  ),
                  Tab(
                    icon: CircleAvatar(
                      backgroundColor: Color(0xFFF8F8F8),
                      // radius: 15,
                      child: ClipOval(
                        // clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset('assets/images/canTurqRedGreen.png'),
                      ),
                    ),
                    text: ' 4 pack',
                  ),
                ],
              ),
              const SizedBox(height: 33),
              Text(
                'All Flavours',
                style: customGoogleFont(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    const tabBarViewItem(),
                    Container(
                      child: Text("tab 2"),
                    ),
                    Container(
                      child: Text("tab 3"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
