import 'package:flutter/material.dart';

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

class WarningPage extends StatefulWidget {
  @override
  _WarningPageState createState() => _WarningPageState();
}

class _WarningPageState extends State<WarningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/welcomescreen.jpg'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 200, bottom: 200),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.yellow),
                color: Colors.yellow.withOpacity(0.3)),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.info,
                      size: 100,
                      color: Colors.yellow,
                    ),
                    SizedBox(height: 20),
                 
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.only(top: 20,bottom: 20),
                      color: Colors.black.withOpacity(0.3),
                      child: Text(
                        "This app is not intended for individuals with medical conditions or physical limitations related to exercise. Please consult a healthcare professional before starting any exercise routine.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: AppColor.textwhite,
                          
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.primary
                          ),
                      child: Text(
                        'Proceed',
                        style: TextStyle(
                          color: AppColor.textwhite,
                          fontWeight: FontWeight.bold
                      
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
