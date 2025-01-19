import 'package:flutter/material.dart';
import 'package:practicedb/pages/WhatisTarget_Area_Page.dart';

class WhatGoalPage extends StatefulWidget {
  const WhatGoalPage({super.key});

  @override
  State<WhatGoalPage> createState() => _WhatGoalPageState();
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

class _WhatGoalPageState extends State<WhatGoalPage> {
  var _CheckBoxforLossWeight = false;
  var _CheckBoxforGainMuscleMass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundgrey,
      appBar: AppbarSection(),
      body: Column(
        children: [
          TextSection(),
          TextFieldSection(),
          SizedBox(height: 75,),
          NextButton(context)
        ],
      ),
    );
  }

  GestureDetector NextButton(BuildContext context) {
    return GestureDetector(
    onTap: () {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TargetArea()));
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
                border: Border.all(width: 2, color: AppColor.buttonSecondary),
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

  Container TextFieldSection() {
    return Container(
          height: 250,
          color: AppColor.primary,
          child: Padding(
            padding: const EdgeInsets.only(right: 25.0, left: 25, top: 40),
            child: Column(
              children: [
                //loss Weight Textfield
                Row(
                  children: [
                    Expanded(
                      child: Container(

                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Align(alignment: Alignment.centerLeft, child: Text(" Loss Weight",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: AppColor.buttonPrimary), textAlign: TextAlign.start,)),
                        ),
                        
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _CheckBoxforLossWeight = !_CheckBoxforLossWeight;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: _CheckBoxforLossWeight
                                ? AppColor.buttonPrimary
                                : AppColor.yellowtext.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Icon(
                            _CheckBoxforLossWeight
                                ? Icons.check_box
                                : Icons.check_box_outlined,
                            color: _CheckBoxforLossWeight
                                ? AppColor.yellowtext : AppColor.textwhite,
                            size: 30,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                //loss Muscle Mass Gain Textfield
                Row(
                  children: [
                    Expanded(
                      child: Container(

                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Align(alignment: Alignment.centerLeft, child: Text(" Muscle Mass Gain",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: AppColor.buttonPrimary), textAlign: TextAlign.start,)),
                        ),
                        
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _CheckBoxforGainMuscleMass = !_CheckBoxforGainMuscleMass;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: _CheckBoxforGainMuscleMass
                                ? AppColor.buttonPrimary
                                : AppColor.yellowtext.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Icon(
                            _CheckBoxforGainMuscleMass
                                ? Icons.check_box
                                : Icons.check_box_outlined,
                            color: _CheckBoxforGainMuscleMass
                                ? AppColor.yellowtext : AppColor.textwhite,
                            size: 30,
                          ),
                        ),
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
        );
  }
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
            Text("What is your Goal?",
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
      onTap: (){
        
      },
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

 GestureDetector primarybutton() {
    return GestureDetector(
      onTap: () {
        
        
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
                  border: Border.all(width: 2, color: AppColor.buttonSecondary),
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
