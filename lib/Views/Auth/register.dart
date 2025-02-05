import 'package:first_app/Views/Auth/login.dart';
import 'package:first_app/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

import '../Widgets/Auth/AuthHeading.dart';
import '../Widgets/Auth/Auth_text_fields.dart';

class Register extends StatelessWidget {
  final RoundedLoadingButtonController _registerbtnController =
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
          foregroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(children: [
              AuthHeading(
                mainText: 'Sign up to CashApp',
                subText: 'Get connected with your\n partner',
                logo: 'assets/images/coin.jfif',
                logoSize: 20.sp,
                fontSize: 18.sp,
              ),
              const SizedBox(
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

              const SizedBox(
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

              //Third textfield confirm password.
              const SizedBox(
                height: 25,
              ),

              AuthTextFields(
                Labeltext: 'Confirm Password',
                icon: Icons.lock_reset,
                Size: 16.sp,
                keyboardtype: TextInputType.emailAddress,
                obscureText: true,
                floatingLabelBehavior: FloatingLabelBehavior.auto,
              ),

              const SizedBox(
                height: 25,
              ),

              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  color: Colors.orange,
                  borderRadius: 15,
                  width: 200.w,
                  controller: _registerbtnController,
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'By registering you agree to our terms and conditions',
                  style: TextStyle(fontSize: 10, color: Colors.redAccent),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          PageTransition(type: PageTransitionType.fade,
                              child: Login())
                          );
                    },
                    child: Text(
                      'Sign In',
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
        ));
  }
}
