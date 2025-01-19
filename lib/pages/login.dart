import 'package:flutter/material.dart';
import 'package:practicedb/pages/createaccount.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
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
  static const Color backgroundgrey = Color.fromARGB(255, 19, 19, 19) ;

}

class _LoginPageState extends State<LoginPage> {
  var _obsecurepass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  AppColor.backgroundgrey,
      appBar: AppbarSection(),
      body: ListView(
        children: [
          TextSection(),
          TextFieldSection(),
          SizedBox(
            height: 50,
          ),
          primarybutton(),
          SizedBox(
            height: 30,
          ),
          dividerSection(),
          SizedBox(
            height: 30,
          ),
          signUpSection()
        ],
      ),
    );
  }

  Container dividerSection() {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "----------------------------",
              style: TextStyle(
                  color: AppColor.buttonSecondary.withOpacity(.5),
                  fontSize: 15),
            ),
            Text("  Or  ",
                style: TextStyle(
                    color: AppColor.buttonSecondary.withOpacity(.5),
                    fontSize: 15)),
            Text("----------------------------",
                style: TextStyle(
                    color: AppColor.buttonSecondary.withOpacity(.5),
                    fontSize: 15))
          ],
        ),
      ),
    );
  }

  Row signUpSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Dont have an account yet? ",
          style: TextStyle(color: Colors.white),
        ),
        GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Createaccount()));
              
            },
            child: Text("Sign Up",
                style: TextStyle(
                    color: AppColor.yellowtext, fontWeight: FontWeight.bold)))
      ],
    );
  }

  GestureDetector primarybutton() {
    return GestureDetector(
      onTap: () {
        print("log in");
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
                "Log In",
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
      decoration: BoxDecoration(
          color: AppColor.primary.withOpacity(0.9),
          ),
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(top: 20, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0, left: 25),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username or email',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColor.solidtext),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: AppColor.shadow.withOpacity(0.5),
                          blurRadius: 40,
                          spreadRadius: 0.0)
                    ]),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        hintText: 'Enter Username or Email',
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
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25.0, left: 25),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColor.solidtext),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: AppColor.shadow.withOpacity(0.5),
                          blurRadius: 40,
                          spreadRadius: 0.0)
                    ]),
                    child: TextField(
                      obscureText: _obsecurepass,
                      decoration: InputDecoration(
                        suffix: IconButton(
                          padding: const EdgeInsetsDirectional.only(end: 20),
                          onPressed: () {
                            setState(() {
                              _obsecurepass = !_obsecurepass;
                            });
                          },
                          icon: _obsecurepass
                              ? const Icon(Icons.visibility_off_outlined)
                              : const Icon(Icons.visibility_outlined),
                        ),
                        prefixIcon: Icon(Icons.lock_clock_outlined),
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
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                print("asdfasdf");
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  "Forget Password?",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  textAlign: TextAlign.start,
                ),
              ))
        ],
      ),
    );
  }

  Container TextSection() {
    return Container(
      height: 250,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hey There,",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
            Text("Welcome",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 35)),
            SizedBox(
              height: 50,
            ),
            Text("Enjoy Real-Time Exercising",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 15)),
            Text("while you Track your Weigth Progression With Us",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 15)),
            Text("With Us",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 15)),
          ],
        ),
      ),
    );
  }

  AppBar AppbarSection() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      leading: Icon(
        Icons.arrow_left,
        color: AppColor.yellowtext,
      ),
      title: Text(
        "Login",
        style: TextStyle(color: AppColor.yellowtext, fontWeight: FontWeight.bold),
      ),
    );
  }
}
