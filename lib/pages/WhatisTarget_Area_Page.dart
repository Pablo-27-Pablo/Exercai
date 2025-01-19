import 'package:flutter/material.dart';
import 'package:practicedb/pages/injury_selection.dart';
import 'package:practicedb/pages/profile_page.dart';

class TargetArea extends StatefulWidget {
  const TargetArea({super.key});

  @override
  State<TargetArea> createState() => _TargetAreaState();
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

class _TargetAreaState extends State<TargetArea> {
  var _CheckBoxLowerBody = false;
  var _CheckBoxUpperBody = false;
  var _CheckBoxFullBody = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundgrey,
      appBar: AppbarSection(),
      body: ListView(
        children: [
          TextSection(),
          TextFieldSection(),
          SizedBox(
            height: 75,
          ),
          
          primarybutton()
        ],
      ),
    );
  }

  GestureDetector primarybutton() {
    return GestureDetector(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
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
          color: AppColor.primary,
          child: Padding(
            padding: const EdgeInsets.only(right: 25.0, left: 25, top: 40),
            child: Column(
              children: [
                //Upper Body Textfield
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Upper Body",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.buttonPrimary),
                                textAlign: TextAlign.start,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _CheckBoxUpperBody = !_CheckBoxUpperBody;
                        });
                        Navigator.push(context, MaterialPageRoute(builder: (context) => InjurySelection()));
                        
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: _CheckBoxUpperBody
                                ? AppColor.buttonPrimary
                                : AppColor.yellowtext.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Icon(
                            _CheckBoxUpperBody
                                ? Icons.check_box
                                : Icons.check_box_outlined,
                            color: _CheckBoxUpperBody
                                ? AppColor.yellowtext
                                : AppColor.textwhite,
                            size: 30,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                //Lower Body Textfield
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Lower Body",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.buttonPrimary),
                                textAlign: TextAlign.start,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _CheckBoxLowerBody = !_CheckBoxLowerBody;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: _CheckBoxLowerBody
                                ? AppColor.buttonPrimary
                                : AppColor.yellowtext.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Icon(
                            _CheckBoxLowerBody
                                ? Icons.check_box
                                : Icons.check_box_outlined,
                            color: _CheckBoxLowerBody
                                ? AppColor.yellowtext
                                : AppColor.textwhite,
                            size: 30,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                //Full Body Textfield
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                " Full Body",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.buttonPrimary),
                                textAlign: TextAlign.start,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _CheckBoxFullBody = !_CheckBoxFullBody;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: _CheckBoxFullBody
                                ? AppColor.buttonPrimary
                                : AppColor.yellowtext.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Icon(
                            _CheckBoxFullBody
                                ? Icons.check_box
                                : Icons.check_box_outlined,
                            color: _CheckBoxFullBody
                                ? AppColor.yellowtext
                                : AppColor.textwhite,
                            size: 30,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 50,)
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
            Text("What is Your Target Area?",
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
    leading: Row(
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
  );
}
