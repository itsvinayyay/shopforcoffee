import 'package:flutter/material.dart';
import 'package:shopforcoffee/constants.dart';
import 'package:shopforcoffee/sizeconfig.dart';
import 'loginscreen_body.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String id = "LoginScreen_id";
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: kMaingradient,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "LoginPage",
            style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Body(),
      ),
    );
  }
}
