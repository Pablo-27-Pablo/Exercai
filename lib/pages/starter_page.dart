import 'package:flutter/material.dart';
import 'package:practicedb/pages/Whatisyour_Goal_page.dart';
import 'package:practicedb/pages/login.dart';

class AppColor {
  static const Color primary = Color(0xFF9575CD);
  static const Color shadow1 = Color(0xFF5E35B1);
  static const Color shadow = Color.fromARGB(255, 52, 28, 102);
  static const Color buttonPrimary = Color.fromARGB(255, 51, 51, 51);
  static const Color buttonSecondary = Color.fromARGB(255, 146, 146, 146);
  static const Color textwhite = Color.fromARGB(255, 219, 219, 219);
  static const Color yellowtext = Color.fromARGB(255, 226, 241, 99);
  static const Color purpletext = Color.fromARGB(255, 179, 160, 255);
  static const Color backgroundgrey = Color.fromARGB(255, 19, 19, 19);
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fullscreen Background Image
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/welcomescreen.jpg'), // Replace with your image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay with gradient effect
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColor.backgroundgrey.withOpacity(1),
                  AppColor.backgroundgrey.withOpacity(0.7),
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          // Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Welcome Title
                    Text(
                      "Welcome, User",
                      style: TextStyle(
                        fontSize: 39,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 16),
                    // Motivational Message
                    Text(
                      "Consistency Is The Key To Progress.\nDon't Give Up!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFEB3B), // Bright yellow text
                      ),
                    ),
                    SizedBox(height: 16),
                    // Subtitle or Description
                    Container(
                      height: 70,
                      color: AppColor.primary,
                      child: Center(
                        child: Text(
                          "You are all set now, let's reach your goals together with us.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 32),
                    // "Go To Home" Button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: AppColor.textwhite),
                        iconColor: Colors.black, // Button color
                        padding: EdgeInsets.symmetric(
                            horizontal: 40, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          
                        ),
                        backgroundColor: AppColor.buttonPrimary,
                        
                        
                      ),
                      child: Text(
                        "Go To Home",
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColor.textwhite,
                        ),
                      ),
                    ),
                    SizedBox(height: 32),
                  ],
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
