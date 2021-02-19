import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_feild_container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedPasswordFeild extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordFeild({
    this.onChanged,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFeildContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
