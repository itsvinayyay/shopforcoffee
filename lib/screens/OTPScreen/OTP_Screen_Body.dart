import 'package:flutter/material.dart';
import 'package:shopforcoffee/constants.dart';
import 'package:shopforcoffee/sizeconfig.dart';
import 'package:shopforcoffee/screens/TourScreen/tourbody_component2.dart';
import 'OTP_Screen_Form.dart';

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
            height: getproportionatescreenheight(20),
          ),
          Text(
            "Verify your OTP",
            style: TextStyle(
              fontSize: 30,
              color: Colors.brown,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "We've sent your OTP to your registered mobile number.",
              style: kimptext,
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "The sent OTP will expire in ",
                style: kimptext,
              ),
              buildTimer(),
            ],
          ),
          SizedBox(
            height: getproportionatescreenheight(20),
          ),
          SizedBox(
            height: getproportionatescreenheight(80),
          ),
          buildForm(),
          SizedBox(
            height: getproportionatescreenheight(55),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: GestureDetector(
                  child: Text(
                    "Get new OTP",
                    style: kimptext.copyWith(fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                  ),

                ),
              ),
              Commonbutton("Continue", () {}),
            ],
          ),
        ],
      ),
    );
  }

  TweenAnimationBuilder<double> buildTimer() {
    return TweenAnimationBuilder(
      tween: Tween(begin: 30.00, end: 0.00),
      duration: Duration(seconds: 30),
      builder: (BuildContext context, double value, Widget? child) => Text(
        "00:${value.toInt()}",
        style: kimptext.copyWith(color: Colors.red),
      ),
    );
  }
}


