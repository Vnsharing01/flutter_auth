import 'package:flutter/material.dart';
import 'package:flutter_auth/components/rounder_button.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/login/login_screen.dart';
import 'package:flutter_auth/screens/welcome/components/background.dart';
import 'package:flutter_auth/signup/sign_up_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // this size provide us total height and width of our screen
    Size mSize = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "WELCOME TO EDU",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                "assets/icons/chat.svg",
                height: mSize.height * 0.4,
              ),
            ),
            SizedBox(
              height: mSize.height * 0.05,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }),
                );
              },
            ),
            RoundedButton(
              text: "SIGNUP",
              textColor: Colors.black,
              color: kPrimaryLightColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SignUpScreen();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
