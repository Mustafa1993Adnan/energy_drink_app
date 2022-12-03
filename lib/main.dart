import 'package:energy_drink_app/screens/home_screen.dart';
import 'package:energy_drink_app/screens/master_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import 'screens/on_boarding_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Energy Drink App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.blueGrey),
          home: const OnBoardingPage(),
        );
      },
    );
  }
}
