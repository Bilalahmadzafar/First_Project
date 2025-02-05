import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeading extends StatelessWidget {
  final String mainText;
  final String subText;
  final String logo;
  final double fontSize;
  final double logoSize;

  AuthHeading(
      {required this.mainText,
       required this.fontSize,
       required this.logoSize,
       required this.subText,
       required this.logo});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
                 mainText,
                  style: GoogleFonts.poppins(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              width: 3,
            ),
            Container(
                  width: logoSize,
                  height: logoSize,
                  child: Image.asset(
                  logo,
                  filterQuality: FilterQuality.high,
                ))
          ],
        ),
        Text(
          subText,
          style: GoogleFonts.poppins(
              fontSize: fontSize, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );
  }
}
