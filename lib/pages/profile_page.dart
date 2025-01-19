import 'package:flutter/material.dart';
import 'package:practicedb/pages/createaccount.dart';
import 'package:practicedb/pages/profile_page_proffile.dart';
import 'package:practicedb/pages/profile_page_setting.dart';

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

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_left,
          color: AppColor.yellowtext,
        ),
        title: Text('My Profile',
            style: TextStyle(
                color: AppColor.textwhite, fontWeight: FontWeight.bold)),
        backgroundColor: AppColor.primary,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Profile header section
          Container(
            color: AppColor.primary,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                      'assets/MikoProfile.jpg'), // Add your image asset here
                ),
                SizedBox(height: 10),
                Text(
                  'Miko Rivera',
                  style: TextStyle(
                      fontSize: 20,
                      color: AppColor.textwhite,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  'mikorivera@email.com',
                  style: TextStyle(
                      fontSize: 14, color: AppColor.textwhite.withOpacity(0.7)),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.only(left: 60, right: 60),
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  decoration: BoxDecoration(
                      color: AppColor.shadow.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(14)),
                  child: Row(
                    children: [
                      Expanded(child: _infoCard('55 Kg', 'Weight')),
                      Column(
                        children: [
                          Text("|",
                              style: TextStyle(
                                  color: AppColor.textwhite.withOpacity(0.5))),
                          Text("|",
                              style: TextStyle(
                                  color: AppColor.textwhite.withOpacity(0.5))),
                          Text("|",
                              style: TextStyle(
                                  color: AppColor.textwhite.withOpacity(0.5))),
                        ],
                      ),
                      Expanded(child: _infoCard('23', 'Years Old')),
                      Column(
                        children: [
                          Text("|",
                              style: TextStyle(
                                  color: AppColor.textwhite.withOpacity(0.5))),
                          Text("|",
                              style: TextStyle(
                                  color: AppColor.textwhite.withOpacity(0.5))),
                          Text("|",
                              style: TextStyle(
                                  color: AppColor.textwhite.withOpacity(0.5))),
                        ],
                      ),
                      Expanded(child: _infoCard('1.64 CM', 'Height')),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Options section
          Expanded(
            child: Container(
              color: AppColor.backgroundgrey,
              child: ListView(
                children: [
                  _optionTile(Icons.person, 'Profile', () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilePageProfile()));
                  }),
                  _optionTile(Icons.settings, 'Settings', () {
                    

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilePageSetting()));

                    
                  }),
                  _optionTile(Icons.logout, 'Logout', () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Createaccount()));
                  }),
                ],
              ),
            ),
          ),
        ],
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

  // Helper widget for info cards
  Widget _infoCard(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
              fontSize: 16,
              color: AppColor.textwhite,
              fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: TextStyle(
              fontSize: 14, color: AppColor.textwhite.withOpacity(0.7)),
        ),
      ],
    );
  }

  // Helper widget for option tiles
  Widget _optionTile(IconData icon, String title, VoidCallback onTap) {
    return Container(
      margin: EdgeInsets.only(top: 10,bottom: 10),
      child: ListTile(
        leading: ClipOval(
          child: Container(
              height: 50,
              width: 50,
              color: AppColor.primary,
          
              child: Icon(icon, color: AppColor.textwhite)),
        ),
        title: Text(
          title,
          style: TextStyle(color: AppColor.textwhite, fontSize: 16),
        ),
        trailing: Icon(Icons.arrow_forward_ios,
            color: AppColor.yellowtext.withOpacity(0.7), size: 16),
        onTap: onTap,
      ),
    );
  }
}
