import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants_files/constants.dart';
import '../data/data.dart';

class ContainerOffer extends StatelessWidget {
  const ContainerOffer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 210,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomRight,
          colors: [
            blackColor,
            turquoiseColor,
          ],
        ),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 26,
            child: Column(
              children: [
                customGoogleTextWithStroke(
                    text: 'FIZZ',
                    fontWeight: FontWeight.w900,
                    fontSize: 56,
                    textColor: Colors.transparent,
                    strokeColor: strokeColor),
                customGoogleTextWithStroke(
                    text: 'FIZZ',
                    fontWeight: FontWeight.w900,
                    fontSize: 56,
                    textColor: Colors.red,
                    strokeColor: strokeColor),
                customGoogleTextWithStroke(
                    text: 'FIZZ',
                    fontWeight: FontWeight.w900,
                    fontSize: 56,
                    textColor: Colors.red,
                    strokeColor: strokeColor),
                customGoogleTextWithStroke(
                    text: 'FIZZ',
                    fontWeight: FontWeight.w900,
                    fontSize: 56,
                    textColor: Colors.red,
                    strokeColor: strokeColor),
              ],
            ),
          ),
          Positioned(
            top: 36,
            left: 26,
            child: Text(
              '${offer.offerPercent.toString()}% Off',
              style: customGoogleFont(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 56,
            left: 26,
            child: Text(
              '${offer.offerTitle.toString()}',
              style: customGoogleFont(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 26,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(), backgroundColor: Colors.white),
              child: Text(
                'By Now',
                style: customGoogleFont(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF110000)),
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            right: 22,
            child: Image.asset(
              offer.offerImage.toString(),
              width: 28.5.w,
              height: 25.6.h,
            ),
          ),
        ],
      ),
    );
  }
}
