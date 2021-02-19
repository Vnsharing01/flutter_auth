import 'package:flutter/material.dart';
import 'package:flutter_auth/components/already_have_an_account_check.dart';
import 'package:flutter_auth/components/rounded_input_feild.dart';
import 'package:flutter_auth/components/rounded_password_feild.dart';
import 'package:flutter_auth/components/rounder_button.dart';
import 'package:flutter_auth/homepage/home_page.dart';
import 'package:flutter_auth/login/components/background.dart';
import 'package:flutter_auth/signup/sign_up_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mSize = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "LOGIN",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: mSize.height * 0.35,
          ),
          RoundedInputFeild(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordFeild(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return HomePage();
                }),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: AlreadyHaveAnAcountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SignUpScreen();
                  }),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
