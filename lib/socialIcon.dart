import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final String imagePath;
  SocialIcon({this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(
          color: Colors.black,
          offset: Offset(0,10),
          blurRadius: 10,
        ),]
      ),
      child: Center(
        child: Container(
          height: 50,
          width: 50,
          child: Image.asset(imagePath),
        ),
      ),
    );
  }

}