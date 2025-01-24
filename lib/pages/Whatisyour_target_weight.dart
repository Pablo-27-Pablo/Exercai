import 'package:flutter/material.dart';
import 'package:practicedb/main.dart';
import 'package:practicedb/pages/Whatisyour_Goal_page.dart';
import 'package:practicedb/pages/utils/constant.dart';

class WhatisyourTargetWeight extends StatefulWidget {
  const WhatisyourTargetWeight({super.key});

  @override
  State<WhatisyourTargetWeight> createState() => _WhatisyourTargetWeightState();
}

class AppColor {
  static const Color primary = Color(0xFF9575CD);
  static const Color shadow = Color(0xFF5E35B1);
  static const Color solidtext = Color.fromARGB(255, 52, 28, 102);
  static const Color buttonPrimary = Color.fromARGB(255, 51, 51, 51);
  static const Color buttonSecondary = Color.fromARGB(255, 146, 146, 146);
  static const Color textwhite = Color.fromARGB(255, 219, 219, 219);
  static const Color yellowtext = Color.fromARGB(255, 226, 241, 99);
  static const Color purpletext = Color.fromARGB(255, 179, 160, 255);
  static const Color backgroundgrey = Color.fromARGB(255, 30, 30, 30);
}

class _WhatisyourTargetWeightState extends State<WhatisyourTargetWeight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundgrey,
      appBar: AppbarSection(),
      body: Column(
        children: [
          TextSection(),
          TextFieldSection(),
          SizedBox(
            height: 70,
          ),
          buttonnext(context)
        ],
      ),
    );
  }

  GestureDetector buttonnext(BuildContext context) {
    return GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => WhatGoalPage()));
          },
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 55,
                  width: 150,
                  decoration: BoxDecoration(
                      color: AppColor.buttonPrimary.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          width: 2, color: AppColor.buttonSecondary),
                      boxShadow: [
                        BoxShadow(
                            color: AppColor.buttonSecondary.withOpacity(0.7),
                            blurRadius: 90,
                            spreadRadius: 0.1)
                      ]),
                  child: Center(
                      child: Text(
                    "Next >",
                    style: TextStyle(
                        color: AppColor.textwhite,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
          ),
        );
  }
}


Container TextFieldSection() {
  return Container(
    decoration: BoxDecoration(
      color: AppColor.primary,
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              children: [
                Text(
                  "Challenging Goal!",
                  style: TextStyle(
                      color: AppColor.yellowtext,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25, left: 25),
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),

                //Textfield kg
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: AppColor.shadow.withOpacity(0.5),
                              blurRadius: 40,
                              spreadRadius: 0.0)
                        ]),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.monitor_weight_outlined),
                            hintText: 'Weight (kg)',
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
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 32, 32, 32),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                          child: Text(
                        "kg",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: AppColor.yellowtext),
                      )),
                    )
                  ],
                ),

                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text("You Will lose ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                    Text("26.6%",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.red)),
                    Text(" of weight",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
                  ],
                ),
                smallGap,
                Row(
                  children: [
                    Container(
                      
                      
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("You can see more significant health benifits:"),
                          Text("- Improved cardio vascular health"),
                          Text("- Reduce the risk of the cancer"),
                        ],
                    
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Container TextSection() {
  return Container(
    height: 210,
    child: Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("What is your Target weight?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30)),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Text(
                "Lorem asdf asdfasdfasdf adfssssssssssss asdfffffffffffffff asdffffffffffff asdfffffffff asdf asdf afsd asdfffffffffff asdf asdffff        asdfasdfasdfasd asdfa  asdfasd asdf asdf asdfasd df",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

AppBar AppbarSection() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.transparent,
    leading: GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Icon(
            Icons.arrow_left,
            color: Colors.yellow,
          ),
          Text(
            "Back",
            style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
