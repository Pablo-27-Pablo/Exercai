import 'package:practicedb/main.dart';
import 'package:flutter/material.dart';

class WelcomeUser extends StatefulWidget {
  const WelcomeUser({super.key});

  @override
  State<WelcomeUser> createState() => _WelcomeUserState();
}

class _WelcomeUserState extends State<WelcomeUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundgrey,
      body: SafeArea(
        child: Column(
          children: [
            // Top image with overlay
            Stack(
              children: [
                Image.asset(
                  'assets/gym9.jpg', // Add the image file in your project assets
                  height: MediaQuery.of(context).size.height * 0.57,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.57,
                  color: Colors.black.withOpacity(0.2), // Dark overlay for text visibility
                ),
              ],
            ),

            // Welcome Text
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Welcome, User',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Consistency Is\nThe Key To Progress.\nDon’t Give Up!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColor.yellowtext,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                      color: AppColor.purpletext.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(

                          'You are all set now, let’s reach your goals together\nwith us',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Go to Home Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to Home
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.withOpacity(0.2), // Semi-transparent background
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(
                      color: Colors.white, // White border color
                      width: 1, // Border width
                    ),
                  ),
                ),
                child: Text(
                  'Go To Home',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // White text
                  ),
                ),
              ),

              ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
