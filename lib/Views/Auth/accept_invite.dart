import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AcceptInvite extends StatelessWidget {
  const AcceptInvite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
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
          leading: GestureDetector(onTap: (){
            onTap: Navigator.of(context).pop();
          },
              child: Icon(Icons.arrow_back)),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 60.h,
            color: Colors.orangeAccent,
            child: Text(
              "See Friend Invitations",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.sp,
                  letterSpacing: 0.6),
            ),),

            SizedBox(height: 15.h,
            width: 00.w,),

            Container(
              width: double.infinity,
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                elevation: 10,
                child: Container(
                  height: 100,
                  child: Row(
                    children: [
                      // Profile Avatar
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 20, 5, 15),
                        child: Container(
                          height: 60.h,
                          width: 60.w,
                          child: CircularProfileAvatar(
                            "imageUrl",
                            backgroundColor: Colors.blue,
                            radius: 30,
                          ),
                        ),
                      ),

                      // User Info
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 30, bottom: 5),
                            child: Text("@Bilal1234"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Text("Bilal"),
                          ),
                        ],
                      ),

                      // Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end, // Align buttons to the end
                        children: [SizedBox(width: 20,),
                          ElevatedButton(
                            onPressed: () {
                              print('Button Pressed!');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8), // Smaller padding
                            ),
                            child: const Text(
                              'Send Request',
                              style: TextStyle(fontSize: 12), // Smaller font size
                            ),
                          ),
                          SizedBox(width: 10), // Add spacing between buttons
                          ElevatedButton(
                            onPressed: () {
                              print('Button Pressed!');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red.shade400,
                              foregroundColor: Colors.redAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8), // Smaller padding
                            ),

                            child:  Text(
                              'Decline',
                              style: TextStyle(fontSize: 12.sp,
                                  color: Colors.black), // Smaller font size
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

          SizedBox(
            height: 15.h,
          ),

          Container(
            height: 300.h,
            width: 350.w,
            alignment: const Alignment(0, -0.7),
            child: Image.asset("assets/images/empty-inbox.jpg"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Your Received emails are currently. ",
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.w500),
              ),
              Text(
                "Empty",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
