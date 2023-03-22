import 'package:flutter/material.dart';
import 'package:shopforcoffee/constants.dart';
import 'SignUp_Form.dart';
import 'package:shopforcoffee/sizeconfig.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          SizedBox(
            height: getproportionatescreenheight(30),
          ),
          Text(
            "Register your Account",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.brown, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Register your details below or Sign up using one of the social media handles.",
              style: kimptext,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: getproportionatescreenheight(30),
          ),
          BuildForm(),
        ],
      ),
    );
  }
}
