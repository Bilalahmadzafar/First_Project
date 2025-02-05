import 'package:first_app/Views/Widgets/Auth/Auth_text_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

import '../Widgets/Auth/AuthHeading.dart';

class ForgotPassword extends StatelessWidget {

  final RoundedLoadingButtonController _loginbtnController = RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        foregroundColor: Colors.black,
        title: Text(
          'CashApp',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(children: [
            AuthHeading(
              mainText: 'Forgot your password?',
              subText: '',
              logo: 'assets/images/coin.jfif',
              logoSize: 20,
              fontSize: 18,
            ),
            Container(
              width: 150,
              height: 150,
              child: Image.asset(
                "assets/images/forgot-password.png",
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
                textAlign: TextAlign.justify,
                "To request for a new one, type your Email address below. "
                "A link to reset your password would be sent to that email."),

          const SizedBox(
              height: 10),

            AuthTextFields(
              Labeltext: 'Email',
              keyboardtype: TextInputType.emailAddress,
              obscureText: false,
              icon: Icons.email,
              Size: 16,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
            ),
            const SizedBox(
                height: 10),

            RoundedLoadingButton(
              borderRadius: 10,
              width: double.infinity,
              controller: _loginbtnController,
              onPressed: (){print;},
              child: Text('Login'),
              color: Colors.orangeAccent,
            ),
          ]),
        ),
      ),
    );
  }
}
