import 'package:flutter/material.dart';
import 'package:practicedb/pages/utils/constant.dart';

class InjurySelection extends StatefulWidget {
  const InjurySelection({super.key});

  @override
  State<InjurySelection> createState() => _InjurySelectionState();
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

class _InjurySelectionState extends State<InjurySelection> {
  var _none_of_theme = true;
  var _knee_injury = false;
  var _lower_back = false;
  var _shoulder = false;
  var _ankle = false;
  var _wrist = false;
  void Updatin_none_of_theme() {
    if (_knee_injury == true ||
        _lower_back == true ||
        _shoulder == true ||
        _ankle == true ||
        _wrist == true) {
      setState(() {
        _none_of_theme = false;
      });
    } else {
      setState(() {
        _none_of_theme = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundgrey,
      appBar: AppbarSection(),
      body: ListView(
        children: [
          TextSection(),
          SizedBox(
            height: 75,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              decoration: BoxDecoration(),
              child: Column(
                children: [
                  //None of Them
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _none_of_theme = true;
                      _knee_injury = false;
                      _lower_back = false;
                      _shoulder = false;
                      _ankle = false;
                      _wrist = false;
                      });
                      
                      print(_lower_back);
                      Updatin_none_of_theme();
                      
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "None of Them",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.buttonPrimary),
                                  textAlign: TextAlign.start,
                                )),
                            _none_of_theme
                                ? Padding(
                                    padding: const EdgeInsets.only(right: 30),
                                    child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.green,
                                        ),
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                        )),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    ),
                  ),
                  largeGap,
                  //Knee
                  GestureDetector(
                    onTap: () {
                      _knee_injury = !_knee_injury;

                      Updatin_none_of_theme();
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Knee",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.buttonPrimary),
                                  textAlign: TextAlign.start,
                                )),
                            _knee_injury
                                ? Padding(
                                    padding: const EdgeInsets.only(right: 30),
                                    child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.green,
                                        ),
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                        )),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    ),
                  ),
                  largeGap,
                  //Lower Back
                  GestureDetector(
                    onTap: () {
                      _lower_back = !_lower_back;
                      Updatin_none_of_theme();
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Lower Back",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.buttonPrimary),
                                  textAlign: TextAlign.start,
                                )),
                            _lower_back
                                ? Padding(
                                    padding: const EdgeInsets.only(right: 30),
                                    child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.green,
                                        ),
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                        )),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    ),
                  ),
                  largeGap,
                  //Shoulder
                  GestureDetector(
                    onTap: () {
                      _shoulder = !_shoulder;
                      Updatin_none_of_theme();
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Shoulder",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.buttonPrimary),
                                  textAlign: TextAlign.start,
                                )),
                            _shoulder
                                ? Padding(
                                    padding: const EdgeInsets.only(right: 30),
                                    child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.green,
                                        ),
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                        )),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    ),
                  ),
                  largeGap,
                  //Ankkle
                  GestureDetector(
                    onTap: () {
                      _ankle = !_ankle;
                      Updatin_none_of_theme();
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Ankle",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.buttonPrimary),
                                  textAlign: TextAlign.start,
                                )),
                            _ankle
                                ? Padding(
                                    padding: const EdgeInsets.only(right: 30),
                                    child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.green,
                                        ),
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                        )),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    ),
                  ),
                  largeGap,
                  //Wrist
                  GestureDetector(
                    onTap: () {
                      _wrist = !_wrist;
                      Updatin_none_of_theme();
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Wrist",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.buttonPrimary),
                                  textAlign: TextAlign.start,
                                )),
                            _wrist
                                ? Padding(
                                    padding: const EdgeInsets.only(right: 30),
                                    child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.green,
                                        ),
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                        )),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          largeGap,
          largeGap,

          primarybutton()
        ],
      ),
    );
  }
}

GestureDetector primarybutton() {
  return GestureDetector(
    onTap: () {
      //Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
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

Container TextSection() {
  return Container(
    height: 150,
    child: Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Any InJured Areas Needing Attention?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30)),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Text(
                "asdf asdf afsd asdfffffffffff asdf   asdfasdfasdfasd asdfa  asdfasd asdf asdf asdfasd df",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 15),
                textAlign: TextAlign.start,
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
