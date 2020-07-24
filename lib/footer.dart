import 'package:flutter/cupertino.dart';
import 'package:flutter_app_23_07_20/socialIcon.dart';

class FooterWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child:  Row(
          children: [
            SocialIcon(imagePath: 'assets/images/instagram24px.png',),
            SizedBox(width: 7,),
            SocialIcon(imagePath: 'assets/images/facebook24px.png',),
            SizedBox(width: 7,),
            SocialIcon(imagePath: 'assets/images/twitter24px.png',),
            SizedBox(width: 7,),
            SocialIcon(imagePath: 'assets/images/linkedin24px.png',),
          ],
        ),
      ),
    );
  }

}