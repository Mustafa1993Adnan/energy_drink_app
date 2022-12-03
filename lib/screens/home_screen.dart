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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          SizedBox(
            height: 24,
          ),
          ContainerOffer(),
          SizedBox(
            height: 22,
          ),
          TabControllerItems(),
        ],
      ),
    );
  }
}
//
// Scaffold(
// backgroundColor: pagePrimaryColor,
// extendBody: true,
// appBar: CustomAppBar(),
// bottomNavigationBar: const CustomBottomNavBar(),
// body: Center(
// child: Column(
// children: const [
// SizedBox(
// height: 24,
// ),
// ContainerOffer(),
// SizedBox(
// height: 22,
// ),
// TabControllerItems(),
// ],
// ),
// ),
// );
