import 'package:flutter/material.dart';
import 'package:shopforcoffee/screens/Bottom_Nav_Bar.dart';
import 'package:shopforcoffee/screens/HomeScreen/Home_Screen.dart';
import 'package:shopforcoffee/screens/loginscreen/login_screen.dart';
import 'package:shopforcoffee/screens/TourScreen/tourbody_component2.dart';
import 'package:shopforcoffee/sizeconfig.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getproportionatescreenheight(20),
        ),
        Image.asset("assets/images/7.png"),
        SizedBox(
          height: getproportionatescreenheight(20),
        ),
        Text(
          "Login Success",
          style: TextStyle(
            color: Colors.brown,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              right: 15,
            ),
            child: Commonbutton(
              "Back to home",
              () {
                Navigator.pushNamed(context, Bottom_Nav.id);
              },
            ),
          ),
        ),
      ],
    );
  }
}
