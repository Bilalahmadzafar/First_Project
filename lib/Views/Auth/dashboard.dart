import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/Auth/dashboard_gradient_feature.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "DASHBOARD",
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold, fontSize: 22, letterSpacing: 1),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          padding: EdgeInsets.only(left: 25),
          alignment: Alignment.topLeft,
          child: Text(
            "Your Friend",
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold, fontSize: 19, letterSpacing: 1),
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          width: double.infinity,
          child: Card(
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white12,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 25, horizontal: 25),
                          child: CircularProfileAvatar(
                            "imageUrl",
                            backgroundColor: Colors.cyanAccent,
                            borderWidth: 1,
                            borderColor: Colors.yellow,
                            elevation: 20,
                            radius: 40,
                            cacheImage: true,
                            errorWidget: (context, url, error) {
                              return Icon(
                                Icons.face,
                                size: 60,
                              );
                            },
                            animateFromOldImageOnUrlChange: true,
                            placeHolder: (context, url) {
                              return Container(
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Flexible(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.fiber_manual_record,
                                color: Colors.grey,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Bilal Ahmad",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    letterSpacing: 1),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.blue,
                                size: 28,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                child: Text(
                                  "Walton Road Lahore, Pakistan",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      letterSpacing: 1),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                    ],
                  ),

                  SizedBox(
                    height: 5,
                  ),

                  // Updated Row to ensure "Status" stays within the card
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // First Column (Status)
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Status",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 13,
                                    letterSpacing: 1),
                              ),
                              Text(
                                "Offline",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent,
                                    fontSize: 13,
                                    letterSpacing: 1),
                              ),
                            ],
                          ),
                        ),

                        // Vertical Divider
                        Container(
                          height: 30,
                          child: VerticalDivider(
                            thickness: 2,
                            color: Colors.black,
                          ),
                        ),

                        // Second Column (User Status)
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "User Status",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 13,
                                    letterSpacing: 1),
                              ),
                              Text(
                                "Offline",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent,
                                    fontSize: 13,
                                    letterSpacing: 1),
                              ),
                            ],
                          ),
                        ),

                        // Vertical Divider
                        Container(
                          height: 30,
                          child: VerticalDivider(
                            thickness: 2,
                            color: Colors.black,
                          ),
                        ),

                        // Third Column (Extra User Status)
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "User Status",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 13,
                                    letterSpacing: 1),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: DashboardGradientFeature(
                iconImg: "assets/dashboard/smartphone.png",
                btnText: "Device Info",
                clr: [
                  Colors.green,
                  Colors.greenAccent,
                ],
              ),
            ),
            Flexible(
                child: DashboardGradientFeature(
              iconImg: "assets/dashboard/Gallery_icon.png",
              btnText: "Gallery",
              clr: [
                Colors.yellow,
                Colors.yellowAccent,
              ],
            )),
            Flexible(
                child: DashboardGradientFeature(
              iconImg: "assets/dashboard/icon-smiley.png",
              btnText: "Mood",
              clr: [
                Colors.purple,
                Colors.purpleAccent,
              ],
            )),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Our Features",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                    fontSize: 20,
                    letterSpacing: 1),
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            children: [
              Expanded(flex: 8,
                  child: DashboardGradientFeature(
                    iconImg: "assets/dashboard/Gallery_icon.png",
                    btnText: "Gallery",
                    clr: [
                      Colors.yellow,
                      Colors.yellowAccent,
                    ],
                  )),
              SizedBox(width: 20,),

              Expanded(flex: 8,
                  child: DashboardGradientFeature(
                    iconImg: "assets/dashboard/Gallery_icon.png",
                    btnText: "Gallery",
                    clr: [
                      Colors.yellow,
                      Colors.yellowAccent,
                    ],
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
