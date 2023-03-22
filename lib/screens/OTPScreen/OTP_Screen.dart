import 'package:flutter/material.dart';
import 'package:shopforcoffee/constants.dart';
import 'OTP_Screen_Body.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);
  static const String id = "OTP_Screen";

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(gradient: kMaingradient),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Text(
              "OTP Verification",
              style:
                  TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Body(),
        ),
      ),
    );
  }
}
