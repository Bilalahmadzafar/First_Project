import 'dart:async';

//import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:first_app/Views/Auth/accept_invite.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

class InviteFriend extends StatelessWidget {
  final RoundedLoadingButtonController _invitefriend =
      RoundedLoadingButtonController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Container(
            width: 90,
            height: 90,
            child: Image.asset(
              "assets/images/gold-coins-stack.jpg",
              filterQuality: FilterQuality.high,
              fit: BoxFit.contain,
            ),
          ),
          leading: null,
          actions: [
            GestureDetector(
              onTap: () {
                Timer(Duration(seconds: 3), () {
                  _invitefriend.success();
                });
                Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.bottomToTop,
                      child: AcceptInvite(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(
                  Icons.person_outlined,
                  size: 35.0,
                  color: Colors.orange.shade700,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 60,
              color: Colors.orangeAccent,
              child: Text(
                "Find your Friend",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    letterSpacing: 0.6),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(children: [
                Expanded(
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 10.0,
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        hintText: "Hi, Bilal! Type an exact username.",
                        hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Nunito",),

                        border: InputBorder.none,
                        focusedBorder: null,
                        enabledBorder: null,
                        errorBorder: null,
                        disabledBorder: null,
                      ),
                    ),
                  ),
                ),
                 SizedBox(
                  width: 12,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 10.0),
                    ],
                  ),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ]),
            ),
            const SizedBox(height: 20.0),

            SizedBox(
              height: 300,
              width: 400,
              child: Image.asset("assets/images/Invite friends2.jpg"),
            ),
            const SizedBox(height: 00.0),
            const Text(
              "Invite or Search for your friend on CashApp",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                // Add your button's action here
                print('Button Pressed!');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent, // Background color
                foregroundColor: Colors.black, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(20.0), // Rounded corners
                ),
                padding: EdgeInsets.all(15.0), // Padding
              ),
              child: const Text('Invite a Friend'),
            ),
          ],
        ),
      ),
    );
  }
}
