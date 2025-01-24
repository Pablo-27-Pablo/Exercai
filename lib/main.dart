import 'package:flutter/material.dart';
import 'package:practicedb/pages/WhatisTarget_Area_Page.dart';
import 'package:practicedb/pages/Whatisyour_Goal_page.dart';
import 'package:practicedb/pages/Whatisyour_target_weight.dart';
import 'package:practicedb/pages/createaccount.dart';
import 'package:practicedb/pages/exerciseposturepage1.dart';
import 'package:practicedb/pages/injury_selection.dart';
import 'package:practicedb/pages/intro3.dart';
import 'package:practicedb/pages/login.dart';
import 'package:practicedb/pages/mainlandingpage.dart';
import 'package:practicedb/pages/profile_page.dart';
import 'package:practicedb/pages/profile_page_personal_setting.dart';
import 'package:practicedb/pages/profile_page_proffile.dart';
import 'package:practicedb/pages/profile_page_setting.dart';
import 'package:practicedb/pages/progress_tracking..dart';
import 'package:practicedb/pages/starter_page.dart';
import 'package:practicedb/pages/warning_for_healthproblem.dart';
import 'package:practicedb/pages/welcome.dart';
import 'package:practicedb/pages/workoutcomplete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhatisyourTargetWeight(
        
      ),
    );
  }
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
