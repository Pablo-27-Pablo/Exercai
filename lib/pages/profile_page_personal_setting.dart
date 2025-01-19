import 'package:flutter/material.dart';
import 'package:practicedb/pages/progress_tracking..dart';
import 'package:practicedb/pages/utils/constant.dart';

class HomePagePersonalSetting extends StatefulWidget {
  const HomePagePersonalSetting({super.key});

  @override
  State<HomePagePersonalSetting> createState() =>
      _HomePagePersonalSettingState();
}

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

class _HomePagePersonalSettingState extends State<HomePagePersonalSetting> {
  var _obsecure_current_password = true;
  var _obsecure_new_password = true;
  var _obsecure_confirm_password = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundgrey,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_left,
          color: AppColor.yellowtext,
        ),
        title: Text('Settings',
            style: TextStyle(
                color: AppColor.primary, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children: [
          //Current password text field
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  largeGap,
                  Row(
                    children: [
                      Text(
                        "Current  Password",
                        style: TextStyle(
                            color: AppColor.primary,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  smallGap,
                  Container(
                    height: 50,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: AppColor.shadow.withOpacity(0.5),
                          blurRadius: 40,
                          spreadRadius: 0.0)
                    ]),
                    child: TextField(
                      obscureText: _obsecure_current_password,
                      decoration: InputDecoration(
                        suffix: IconButton(
                          padding: const EdgeInsetsDirectional.only(end: 20),
                          onPressed: () {
                            setState(() {
                              _obsecure_current_password =
                                  !_obsecure_current_password;
                            });
                          },
                          icon: _obsecure_current_password
                              ? const Icon(Icons.visibility_off_outlined)
                              : const Icon(Icons.visibility_outlined),
                        ),
                        hintText: 'Enter Password',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  smallGap,
                  GestureDetector(
                      onTap: () {},
                      child: Text("Forget Password?",
                          style: TextStyle(
                              color: AppColor.textwhite,
                              fontSize: 15,
                              fontWeight: FontWeight.w700)))
                ],
              ),
            ),
          ),
          Container(
            //New Password Textfield
            padding: EdgeInsets.only(left: 30, right: 30, top: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New Password",
                  style: TextStyle(
                      color: AppColor.primary,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                smallGap,
                Container(
                  height: 50,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: AppColor.shadow.withOpacity(0.5),
                        blurRadius: 40,
                        spreadRadius: 0.0)
                  ]),
                  child: TextField(
                    obscureText: _obsecure_new_password,
                    decoration: InputDecoration(
                      suffix: IconButton(
                        padding: const EdgeInsetsDirectional.only(end: 20),
                        onPressed: () {
                          setState(() {
                            _obsecure_new_password = !_obsecure_new_password;
                          });
                        },
                        icon: _obsecure_new_password
                            ? const Icon(Icons.visibility_off_outlined)
                            : const Icon(Icons.visibility_outlined),
                      ),
                      hintText: 'Enter New Password',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                largeGap,

                //Confirm new password
                Text(
                  "Confirm New Password",
                  style: TextStyle(
                      color: AppColor.primary,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                smallGap,
                Container(
                  height: 50,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: AppColor.shadow.withOpacity(0.5),
                        blurRadius: 40,
                        spreadRadius: 0.0)
                  ]),
                  child: TextField(
                    obscureText: _obsecure_confirm_password,
                    decoration: InputDecoration(
                      suffix: IconButton(
                        padding: const EdgeInsetsDirectional.only(end: 20),
                        onPressed: () {
                          setState(() {
                            _obsecure_confirm_password = !_obsecure_confirm_password;
                          });
                        },
                        icon: _obsecure_confirm_password
                            ? const Icon(Icons.visibility_off_outlined)
                            : const Icon(Icons.visibility_outlined),
                      ),
                      hintText: 'Confirm New Password',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                largeGap,
                largeGap,
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle profile update logic
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProgressTrackingScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.yellowtext,
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Change Password',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.primary,
        selectedItemColor: AppColor.yellowtext,
        unselectedItemColor: Colors.white,
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
