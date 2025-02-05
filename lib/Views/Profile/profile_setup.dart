import 'dart:async';

import 'package:first_app/Views/Auth/invite_friend.dart';
import 'package:first_app/main.dart';
import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

import '../Widgets/Auth/Auth_text_fields.dart';

class ProfileSetup extends StatefulWidget {
  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  final RoundedLoadingButtonController _profilebtn =
      RoundedLoadingButtonController();

  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: const Text("CashApp"),
        /*Image.asset(
          'assets/images/money-bag-icon.jpg',
          filterQuality: FilterQuality.high,
          fit: BoxFit.contain,
        ),*/
        backgroundColor: Colors.orange.shade700,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/rm222-mind-20.jpg"),
            fit: BoxFit.cover, // Ensure the image covers the entire container
          ),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.orange,
              ),
              child: Text(
                "Profile setup",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 18.sp,
                ),
              ),
            ),
            Expanded(
              // Ensures the Column takes up all remaining space
              child: SingleChildScrollView(
                // Makes the content scrollable
                child: Column(
                  children: [
                    const SizedBox(height: 30.0),

                    CircularProfileAvatar(
                      '',
                      radius: 60, // sets radius, default 50.0
                      backgroundColor: Colors
                          .black, // sets background color, default Colors.white
                      borderWidth: 10, // sets border, default 0.0
                      initialsText: Text(
                        "Pic",
                        style: TextStyle(
                          fontSize: 40.sp,
                          color: Colors.deepOrange.shade100,
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),

                    // First textField
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: AuthTextFields(
                        Labeltext: 'Name',
                        icon: Icons.face,
                        Size: 16.sp,
                        keyboardtype: TextInputType.emailAddress,
                        obscureText: false,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                      ),
                    ),

                    // Second Text Field
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: AuthTextFields(
                        Labeltext: 'Email',
                        icon: Icons.alternate_email,
                        Size: 16.sp,
                        keyboardtype: TextInputType.emailAddress,
                        obscureText: false,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                      ),
                    ),

                    const SizedBox(height: 25),

                    // For gender selection button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: isMale ? Colors.blue : Colors.grey,
                              shape: BoxShape.circle,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(1.0, 9.0),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: const Icon(Icons.male),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: isMale ? Colors.grey : Colors.pinkAccent,
                              shape: BoxShape.circle,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(1.0, 9.0),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: const Icon(Icons.female),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 15),

                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: RoundedLoadingButton(
                        borderRadius: 15,
                        width: 200.w,
                        controller: _profilebtn,
                        onPressed: () {
                          Timer(Duration(seconds: 3), () {
                            _profilebtn.success();
                          });
                          Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: InviteFriend(),
                              ));
                        },
                        color: Colors.orange.shade700,
                        child: const Text('Next'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
