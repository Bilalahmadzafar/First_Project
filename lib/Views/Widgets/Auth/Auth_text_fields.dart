import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTextFields extends StatelessWidget {
  final TextInputType keyboardtype;
  final String Labeltext;
  final bool obscureText;
  final IconData icon;
  final double Size;
  final FloatingLabelBehavior floatingLabelBehavior;

  AuthTextFields(
      {required this.Labeltext,
      required this.keyboardtype,
      required this.obscureText,
      required this.icon,
      required this.Size,
      required this.floatingLabelBehavior});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      textInputAction: TextInputAction.none,
      obscureText: obscureText,
      autofocus: false,
      keyboardType: keyboardtype,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white60,
        prefixIcon: Icon(
          icon,
          size: Size,
        ),
        prefixIconColor: Colors.blueAccent,
        label: Text(
          Labeltext,
          style: GoogleFonts.poppins(fontSize: Size, color: Colors.black),
        ),
        floatingLabelBehavior: floatingLabelBehavior,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
