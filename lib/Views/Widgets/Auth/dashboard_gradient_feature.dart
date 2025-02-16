import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardGradientFeature extends StatelessWidget {
  final String iconImg;
  final String btnText;
  final List<Color> clr;

  DashboardGradientFeature(
      {required this.btnText, required this.clr, required this.iconImg});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 3.0),
            blurRadius: 3.0,
          ),
        ],
        gradient: LinearGradient(
          colors: clr,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
                width: 30,
                height: 30,
                child: Image.asset(
                  iconImg,
                  filterQuality: FilterQuality.high,
                )),
            Flexible(
              child: Text(
                btnText,
                //  textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    //   color: Colors.redAccent,
                    fontSize: 10,
                    letterSpacing: 1),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
