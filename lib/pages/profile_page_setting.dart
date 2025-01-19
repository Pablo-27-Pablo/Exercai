import 'package:flutter/material.dart';
import 'package:practicedb/pages/profile_page_personal_setting.dart';
import 'package:practicedb/pages/profile_page_proffile.dart';

class ProfilePageSetting extends StatefulWidget {
  const ProfilePageSetting({super.key});

  @override
  State<ProfilePageSetting> createState() => _ProfilePageSettingState();
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

class _ProfilePageSettingState extends State<ProfilePageSetting> {
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
      body: Container(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          
          children: [
            ListTile(
              leading: ClipOval(
                child: Container(
                    height: 50,
                    width: 50,
                    color: AppColor.primary,
                    child: Icon(Icons.key, color: AppColor.textwhite)),
              ),
              title: Text(
                "Password Setting",
                style: TextStyle(color: AppColor.textwhite, fontSize: 16),
              ),
              trailing: Icon(Icons.arrow_forward_ios,
                  color: AppColor.yellowtext.withOpacity(0.7), size: 16),
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePagePersonalSetting()));
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 10,bottom: 10),
              child: ListTile(
                leading: ClipOval(
                  child: Container(
                      height: 50,
                      width: 50,
                      color: AppColor.primary,
                      child: Icon(Icons.key, color: AppColor.textwhite)),
                ),
                title: Text(
                  "Delete Account",
                  style: TextStyle(color: AppColor.textwhite, fontSize: 16),
                ),
                trailing: Icon(Icons.arrow_forward_ios,
                    color: AppColor.yellowtext.withOpacity(0.7), size: 16),
                onTap: () {},
              ),
            ),
          ],
        ),
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
