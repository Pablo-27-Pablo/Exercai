import 'package:practicedb/main.dart';
import 'package:flutter/material.dart';

class ThirdOnboarding extends StatefulWidget {
  const ThirdOnboarding({super.key});

  @override
  State<ThirdOnboarding> createState() => _ThirdOnboardingState();
}

class _ThirdOnboardingState extends State<ThirdOnboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/gym8.jpg'), // Replace with your image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Top Skip Button
          Positioned(
            top: 40,
            right: 20,
            child: TextButton(
              onPressed: () {
                // Add Skip functionality
              },
              child: Row(
                children: const [
                  Text(
                    'Skip',
                    style: TextStyle(
                      color: AppColor.yellowtext,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    Icons.play_arrow_rounded,
                    color: AppColor.yellowtext,
                    size: 16,
                  ),
                ],
              ),
            ),
          ),
          // Middle Content
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: AppColor.purpletext.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: const [
                      Icon(
                        Icons.local_fire_department_outlined,
                        size: 40,
                        color: Colors.yellow,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Enjoy Exercising While You\nLose Weight',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildIndicator(isActive: false),
                    const SizedBox(width: 8),
                    _buildIndicator(isActive: false),
                    const SizedBox(width: 8),
                    _buildIndicator(isActive: false),
                  ],
                ),
              ],
            ),
          ),
          // Bottom Button
          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                // Add Next functionality
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.withOpacity(0.2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


Widget _buildIndicator({required bool isActive}) {
  return Container(
    width: isActive ? 12 : 8,
    height: 8,
    decoration: BoxDecoration(
      color: isActive ? AppColor.yellowtext : Colors.grey,
      borderRadius: BorderRadius.circular(4),
    ),
  );
}
