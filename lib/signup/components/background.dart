import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mSize = MediaQuery.of(context).size;
    return Container(
      height: mSize.height,
      width: double.infinity,
      // here i can use size.width but use double.ìninity because both work as a same
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/signup_top.png",
              width: mSize.width * 0.35,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: mSize.width * 0.25,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
