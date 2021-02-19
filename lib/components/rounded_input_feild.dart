import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_feild_container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedInputFeild extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputFeild({
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFeildContainer(
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
