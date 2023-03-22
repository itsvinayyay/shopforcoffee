import 'package:flutter/material.dart';
import 'package:shopforcoffee/constants.dart';
import 'package:shopforcoffee/sizeconfig.dart';
import 'Form_Login.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Experts says to login first in order to enjoy your Coffee!",
              style: TextStyle(color: kTextcolor, fontSize: 25),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: getproportionatescreenheight(30),
            ),
            Text(
              "Welcome back!",
              style: TextStyle(
                color: Colors.black,
                fontSize: getproportionatescreenwidth(70),
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Sign in with your user and password or continue with either of your social media accounts.",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "OpenSans",
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: getproportionatescreenheight(30),
            ),
            Buildform(),
          ],
        ),
      ),
    );
  }
}
