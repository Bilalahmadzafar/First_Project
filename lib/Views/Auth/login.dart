import 'dart:async';

import 'package:first_app/Views/Auth/forgot_password.dart';
import 'package:first_app/Views/Auth/register.dart';
import 'package:first_app/Views/Profile/profile_setup.dart';
import 'package:first_app/Views/Widgets/Auth/AuthHeading.dart';
import 'package:first_app/Views/Widgets/Auth/Auth_text_fields.dart';
import 'package:first_app/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
//import 'package:rounded_loading_button_plus/rounded_loading_button_plus.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final RoundedLoadingButtonController _loginbtnController =
      RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'CashApp',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Colors.orange,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(children: [
                AuthHeading(
                  mainText: 'Sign in to CashApp',
                  subText: 'to connect with your\n partner',
                  logo: 'assets/images/coin.jfif',
                  logoSize: 20.sp,
                  fontSize: 18.sp,
                ),
                SizedBox(
                  height: 30,
                ),

                //First text field 'email'
                AuthTextFields(
                  Labeltext: 'Email',
                  icon: Icons.alternate_email,
                  Size: 16.sp,
                  keyboardtype: TextInputType.emailAddress,
                  obscureText: false,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),

                SizedBox(
                  height: 25,
                ),

                //Second text field 'password'

                AuthTextFields(
                  Labeltext: 'Password',
                  icon: Icons.password,
                  Size: 16.sp,
                  keyboardtype: TextInputType.emailAddress,
                  obscureText: true,
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),

                SizedBox(
                  height: 25,
                ),
                Hero(
                  tag: "Auth",
                  child: RoundedLoadingButton(
                    color: Colors.orange,
                    borderRadius: 15,
                    width: 150,
                    controller: _loginbtnController,
                    onPressed: () {
                      Timer(Duration(seconds: 3), () {
                        _loginbtnController.success();
                      });
                      Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: ProfileSetup(),
                          ));
                    },
                    child: Text(
                      'Login',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, color: Colors.black),
                    ),
                  ),
                ),

                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRight,
                          child: ForgotPassword(),
                        ));
                  },
                  child: Container(
                    alignment: Alignment(-0.9, 0),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: Register(),
                            ));
                      },
                      child: Text(
                        'SignUp',
                        style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ));
  }
}
