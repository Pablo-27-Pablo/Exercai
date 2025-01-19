import 'package:flutter/material.dart';
import 'exerciseposturepage1.dart';
import 'intro2.dart';
import 'intro3.dart';
import 'mainlandingpage.dart';
import 'walaito.dart';
import 'welcomeuser.dart';
import 'workoutcomplete.dart';
import 'intro1.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class AppColor {
  static const Color primary = Color(0xFF9575CD);
  static const Color shadow = Color(0xFF5E35B1);
  static const Color solidtext = Color.fromARGB(255, 52, 28, 102);
  static const Color bottonPrimary = Color.fromARGB(255, 51, 51, 51);
  static const Color bottonSecondary = Color.fromARGB(255, 146, 146, 146);
  static const Color textwhite = Color.fromARGB(255, 219, 219, 219);
  static const Color yellowtext = Color.fromARGB(255, 226, 241, 99);
  static const Color purpletext = Color.fromARGB(255, 179, 160, 255);
  static const Color backgroundgrey = Color.fromARGB(255, 30, 30, 30);

}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/gym4.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Dark Overlay
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          // Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome to',
                  style: TextStyle(
                    color: AppColor.yellowtext,
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'E',
                            style: TextStyle(
                              color: AppColor.purpletext,
                              fontSize: 140,
                              fontStyle: FontStyle.italic, // Italicized
                              fontWeight: FontWeight.normal, // Not bold
                            ),
                          ),
                          TextSpan(
                            text: 'AI',
                            style: TextStyle(
                              color: AppColor.purpletext,
                              fontSize: 140 ,
                              fontStyle: FontStyle.italic, // Italicized
                              fontWeight: FontWeight.bold, // Bold
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 1),
                    const Icon(
                      Icons.local_fire_department,
                      color: AppColor.yellowtext,
                      size: 140,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'EXERC',
                        style: TextStyle(
                          color: AppColor.yellowtext,
                          fontSize: 50,
                          fontWeight: FontWeight.normal, // Not bold
                          fontStyle: FontStyle.italic, // Italicized
                        ),
                      ),
                      TextSpan(
                        text: 'AI',
                        style: TextStyle(
                          color: AppColor.yellowtext,
                          fontSize: 50,
                          fontWeight: FontWeight.bold, // Bold
                          fontStyle: FontStyle.italic, // Italicized
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
