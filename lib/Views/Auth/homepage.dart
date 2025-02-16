import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:first_app/Views/Auth/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/drawer/gf_drawer.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Homepage/drawer_list_tile.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _homepageKey = GlobalKey();

  List<IconData> icons = [
    FontAwesomeIcons.circleUser,
    FontAwesomeIcons.house,
    FontAwesomeIcons.bell,
  ];

  int page = 0;
  int pageView = 1;

  PageController pagecontroller = PageController();

  Widget pageViewSection() {
    return PageView(
      controller: pagecontroller,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },
      children: [
        Container(
          color: Colors.blue,
        ),
        Dashboard(),
        Container(
          color: Colors.yellowAccent,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: GFDrawer(
        color: Colors.orange.shade600,
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 25, horizontal: 25),
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
                          onTap: () {
                            pagecontroller.animateToPage(0,
                                duration: Duration(milliseconds: 100),
                                curve: Curves.linear);
                            Navigator.of(context).pop();
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
                      Flexible(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bilal",
                            textAlign: TextAlign.right,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                letterSpacing: 1),
                          ),
                          Text(
                            "Bilal@gmail.com",
                            textAlign: TextAlign.right,
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 13,
                                letterSpacing: 0),
                          ),
                        ],
                      ))
                    ],
                  )
                ],
              ),
              flex: 0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding:
                        EdgeInsets.all(2.0), // Padding inside the container
                    margin: EdgeInsets.all(4.0), // Margin outside the container
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your button's action here
                        print('Button Pressed!');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        foregroundColor: Colors.white, // Text color
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 20.0), // Button padding
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        elevation: 2, // Button shadow
                      ),
                      child: Text(
                        'Click Me', // Button text
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                //First
                DrawerListTile(
                  iconName: FontAwesomeIcons.creditCard,
                  title: "CreditCard",
                ),

                //Second List tile
                DrawerListTile(
                  iconName: Icons.settings,
                  title: "Settings",
                ),

                // Third
                DrawerListTile(
                  iconName: FontAwesomeIcons.circleQuestion,
                  title: "Help",
                ),

                //Fourth
                DrawerListTile(
                  iconName: FontAwesomeIcons.message,
                  title: "FeedBack",
                ),

                //Fifth
                DrawerListTile(
                  iconName: FontAwesomeIcons.share,
                  title: "Tell Others",
                ),

                //Sixth
                DrawerListTile(
                  iconName: FontAwesomeIcons.starHalfStroke,
                  title: "Rate the App",
                ),
              ],
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(),
                  DrawerListTile(
                      iconName: FontAwesomeIcons.arrowRightFromBracket,
                      title: "SignOut")
                ],
              ),
            ))
          ],
        ),
      ),
      key: _homepageKey,
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onTap: () {
            _homepageKey.currentState!.openDrawer();
          },
        ),
        elevation: 10,
        title: const Text("CashApp"),
        backgroundColor: Colors.orange.shade700,
        centerTitle: true,
        actions: [
          Container(
            color: Colors.orange,
            padding: EdgeInsets.all(7),
            child:
                Image.asset("assets/dashboard/message-filled-orangeicon.jpg"),
          ),
        ],
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: icons,
        activeIndex: page,
        activeColor: Colors.orange,
        inactiveColor: Colors.green,
        splashSpeedInMilliseconds: 30,
        notchSmoothness: NotchSmoothness.smoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        gapLocation: GapLocation.none,
        onTap: (index) {
          setState(() {
            pageView = index;
            pagecontroller.animateToPage(index,
                duration: Duration(milliseconds: 100), curve: Curves.linear);
          });
        },
      ),
      body: pageViewSection(),
    );
  }
}
