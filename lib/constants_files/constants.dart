import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color whiteColor = Color(0xFFF8F8F8);
const Color blackColor = Color(0xFF0E1514);
const Color turquoiseColor = Color(0xFF0DB296);
const Color btnTurquoiseColor = Color(0xFF369685);
const Color navBtnGreyColor = Color(0xFFAAAAAA);
const Color strokeColor = Color(0xFF454545);
const Color greyColor = Color(0xFFAAAAAA);
const Color pagePrimaryColor = Color(0xFFF8F8F8);

TextStyle customGoogleFont({
  required double fontSize,
  required FontWeight fontWeight,
  Color color = const Color(0xFF0E1514),
  double letterSpacing = 0,
}) {
  return GoogleFonts.montserrat(
      letterSpacing: letterSpacing,
      textStyle: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ));
}

Widget customGoogleTextWithStroke(
    {required String text,
    required FontWeight fontWeight,
    double fontSize = 12,
    double strokeWidth = 1,
    Color textColor = Colors.white,
    Color strokeColor = Colors.black12}) {
  return Stack(
    children: <Widget>[
      SizedBox(
        height: 56,
        child: Text(
          text,
          style: GoogleFonts.poppins(
            height: 1,
            fontSize: fontSize,
            fontWeight: fontWeight,
            // color: Colors.white,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeWidth
              ..color = strokeColor,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
