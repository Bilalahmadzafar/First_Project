import 'package:first_app/Views/Auth/login.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'Views/Auth/accept_invite.dart';
import 'Views/Auth/forgot_password.dart';
import 'Views/Auth/invite_friend.dart';
import 'Views/Auth/register.dart';
import 'Views/Profile/profile_setup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
          useMaterial3: true,
        ),
        home: InviteFriend(),
      );
    },
    );
  }
}



