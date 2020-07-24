import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_23_07_20/extensions/hover_extensions.dart';
import 'package:flutter_app_23_07_20/socialIcon.dart';


class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavBar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavBar();
        } else {
          return MobileNavBar();
        }
      },
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "RetroPortalStudio",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Row(
              children: [
                buildHeaderItem("Home", (){ print("On home pressed");}),
                SizedBox(
                  width: 10,
                ),
                buildHeaderItem("AboutUs", (){ print("On home pressed");}),
                SizedBox(
                  width: 10,
                ),
                buildHeaderItem("Portfolio", (){ print("On home pressed");}),
                SizedBox(
                  width: 10,
                ),
                MaterialButton(
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {},
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                ).moveUpOnHover,
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  buildHeaderItem(text, tap) {
    return GestureDetector(
      onTap: tap,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    ).moveUpOnHover;
  }
}

class MobileNavBar extends StatelessWidget {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "RetroPortalStudio",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                buildHeaderItem("Home", (){ print("On home pressed");}),
                SizedBox(
                  width: 10,
                ),
                buildHeaderItem("AboutUs", () => print("On home pressed")),
                SizedBox(
                  width: 10,
                ),
                buildHeaderItem("Portfolio", () => print("On home pressed")),
                SizedBox(
                  width: 10,
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                ).moveUpOnHover
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildHeaderItem(text, tap) {
    return GestureDetector(
      onTap: tap,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    ).moveUpOnHover;
  }
}
