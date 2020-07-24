import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_23_07_20/socialIcon.dart';

class LandingPage extends StatelessWidget{

  List<Widget> pageChildren(double width){
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Website \nDevelopers",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.white,
             ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text("We have taken each and every project handed over to as a challenge, wich has helped us achieve a high project succes rate.",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
              ),
            ),
            MaterialButton(
                onPressed: (){},
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
                child: Text("Our Packages",
                style: TextStyle(
                  color: Colors.pink,

                ),
                ),
              ),
                ),
            SizedBox(height: 50,),
          ],
        ),
      ),
      Image.asset('assets/images/imag.png',
      width: width,),

    ];
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(context,constraints){
        if(constraints.maxWidth>1200){
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width/2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }

}