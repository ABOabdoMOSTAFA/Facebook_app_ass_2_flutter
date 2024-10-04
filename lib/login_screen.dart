import 'package:assignment_2_flutter/home_screen.dart';
import 'package:assignment_2_flutter/text_facebook_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "LoginScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF3b5999), // Facebook blue background
        child: Column(
          children: [
            // SizedBox(
            //   height: 180,
            // ),
            // Container for the Facebook icon
            Spacer(),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.asset(
                    "assets/images/img.png",
                    height: 60,
                    width: 60,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFacebookWidget(text: "Email or Phone"),
            SizedBox(
              height: 15,
            ),
            TextFacebookWidget(text: "Password"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, HomeScreen.routeName),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF4e68a1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2))),
                fixedSize: Size.fromWidth(300),
              ),
              child: Text(
                "LOG IN",
                style: TextStyle(color: Color(0xFFb0c5de)),
              ),
            ),
            Spacer(),
            Text(
              "Sign Up for Facebook",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Forgot Password?",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
