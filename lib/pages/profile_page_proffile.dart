import 'package:flutter/material.dart';
import 'package:practicedb/pages/createaccount.dart';

class ProfilePageProfile extends StatefulWidget {
  @override
  _ProfilePageProfileState createState() => _ProfilePageProfileState();
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

class _ProfilePageProfileState extends State<ProfilePageProfile> {
  // State variables for editable fields
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Controllers initialized without default values
  }

  @override
  void dispose() {
    // Dispose controllers to free resources

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_left,
          color: AppColor.yellowtext,
        ),
        title: Text('My Profile',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: AppColor.primary,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile header section
            Container(
              color: AppColor.primary,
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/MikoProfile.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Miko Rivera',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Birthday: April 1st',
                    style: TextStyle(
                        fontSize: 14, color: Colors.white.withOpacity(0.7)),
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

            // Editable fields section
            Container(
              color: Colors.black,
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  _buildTextField('Full Name', fullNameController),
                  _buildTextField('Email', emailController),
                  _buildTextField('Mobile Number', mobileNumberController),
                  _buildTextField('Date of Birth', dobController),
                  _buildTextField('Weight', weightController),
                  _buildTextField('Height', heightController),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Handle profile update logic
                      print('Profile updated');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.yellowtext,
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Update Profile',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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

  // Helper widget for info cards
  Widget _infoCard(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.7)),
        ),
      ],
    );
  }

  // Helper widget for text fields
  Widget _buildTextField(String label, TextEditingController controller,) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(color: AppColor.purpletext, fontWeight: FontWeight.w600),),
          SizedBox(height: 5,),
          TextField(
            controller: controller,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: label,
              labelStyle: TextStyle(color: AppColor.backgroundgrey.withOpacity(0.7)),
              filled: true,
              fillColor: AppColor.textwhite,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
