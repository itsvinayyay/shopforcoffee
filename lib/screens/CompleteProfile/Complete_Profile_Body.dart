import 'package:flutter/material.dart';
import 'package:shopforcoffee/constants.dart';
import 'package:shopforcoffee/screens/CompleteProfile/Complete_Profile_Form.dart';
import 'package:shopforcoffee/sizeconfig.dart';
import 'package:shopforcoffee/screens/TourScreen/tourbody_component2.dart';
import 'Complete_Profile_Errors.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(
            height: getproportionatescreenheight(15),
          ),
          Text(
            "Complete your Profile",
            style: TextStyle(
              color: Colors.brown,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              textAlign: TextAlign.center,
              "Complete your details or else continue with social media!",
              style: kimptext,
            ),
          ),
          SizedBox(
            height: getproportionatescreenheight(15),
          ),
    Complete_Form(),
        ],
      ),
    );
  }


}

