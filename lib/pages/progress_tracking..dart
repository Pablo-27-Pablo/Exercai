import 'package:flutter/material.dart';

import 'package:practicedb/pages/warning_for_healthproblem.dart';



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

class ProgressTrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundgrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Progress Tracking',
            style: TextStyle(color: AppColor.primary)),
        actions: [
          IconButton(
              icon: Icon(Icons.search, color: AppColor.primary),
              onPressed: () {}),
          IconButton(
              icon: Icon(Icons.person, color: AppColor.primary),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: AppColor.primary,
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                        'assets/MikoProfile.jpg'), // Replace with your asset
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Miko',
                            style: TextStyle(
                                color: AppColor.textwhite,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.male,
                            color: AppColor.yellowtext,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Age: ',
                            style: TextStyle(
                                color: AppColor.yellowtext,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '23',
                            style: TextStyle(
                                color: AppColor.textwhite, fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text('Weight: ',
                                  style: TextStyle(
                                      color: AppColor.yellowtext,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              Text('55 Kg',
                                  style: TextStyle(
                                      color: AppColor.textwhite, fontSize: 14)),
                            ],
                          ),
                          SizedBox(width: 8),
                          Row(
                            children: [
                              Text('Height: ',
                                  style: TextStyle(
                                      color: AppColor.yellowtext,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              Text('1.56 CM',
                                  style: TextStyle(
                                      color: AppColor.textwhite, fontSize: 14)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.yellowtext),
                    child: Text('Workout Log',
                        style: TextStyle(color: AppColor.buttonPrimary)),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WarningPage()));
                      
                    },
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: AppColor.buttonPrimary)),
                    child: Text('Charts',
                        style: TextStyle(color: AppColor.yellowtext)),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Total Calories Burn',
                      style: TextStyle(
                          color: AppColor.yellowtext,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: AppColor.buttonPrimary,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(Icons.local_fire_department,
                            color: AppColor.primary, size: 30),
                        SizedBox(width: 16),
                        Text('5450 Kcal',
                            style: TextStyle(
                                color: AppColor.textwhite, fontSize: 18)),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Text('Total Minutes Exercise',
                      style: TextStyle(
                          color: AppColor.yellowtext,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: AppColor.buttonPrimary,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(Icons.access_time,
                            color: AppColor.primary, size: 30),
                        SizedBox(width: 16),
                        Text('5 Hours And 25 Minutes',
                            style: TextStyle(
                                color: AppColor.textwhite, fontSize: 18)),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Text('Activities',
                      style: TextStyle(
                          color: AppColor.yellowtext,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  ActivityCard(
                    title: 'Body Weight Squats',
                    calories: '120 Kcal',
                    duration: '25 Mins',
                    time: '3:00 PM',
                  ),
                  ActivityCard(
                    title: 'Calf Raises',
                    calories: '130 Kcal',
                    duration: '30 Mins',
                    time: '4:00 PM',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.primary,
        selectedItemColor: AppColor.yellowtext,
        unselectedItemColor: AppColor.textwhite,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  final String title;
  final String calories;
  final String duration;
  final String time;

  const ActivityCard({
    required this.title,
    required this.calories,
    required this.duration,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColor.textwhite.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Icon(Icons.directions_run, color: AppColor.primary, size: 30),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(color: AppColor.textwhite, fontSize: 16)),
              Row(
                children: [
                  Text('$calories',
                      style:
                          TextStyle(color: AppColor.yellowtext, fontSize: 14)),
                  Text(' • ',
                      style: TextStyle(color: AppColor.primary, fontSize: 14)),
                  Text('Duration: $duration',
                      style:
                          TextStyle(color: AppColor.yellowtext, fontSize: 14)),
                  Text(' • ',
                      style: TextStyle(color: AppColor.primary, fontSize: 14)),
                  Text('$time',
                      style:
                          TextStyle(color: AppColor.yellowtext, fontSize: 14)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
