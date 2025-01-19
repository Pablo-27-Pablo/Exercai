import 'package:flutter/material.dart';
import 'package:practicedb/pages/WhatisTarget_Area_Page.dart';
import 'package:practicedb/pages/Whatisyour_Goal_page.dart';
import 'package:practicedb/pages/createaccount.dart';
import 'package:practicedb/pages/injury_selection.dart';
import 'package:practicedb/pages/login.dart';
import 'package:practicedb/pages/profile_page.dart';
import 'package:practicedb/pages/profile_page_personal_setting.dart';
import 'package:practicedb/pages/profile_page_proffile.dart';
import 'package:practicedb/pages/profile_page_setting.dart';
import 'package:practicedb/pages/starter_page.dart';
import 'package:practicedb/pages/warning_for_healthproblem.dart';
import 'package:practicedb/pages/welcome.dart';

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
      home: WelcomeScreen(
        
      ),
    );
  }
}
