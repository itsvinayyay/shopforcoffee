import 'package:flutter/material.dart';
import 'package:shopforcoffee/constants.dart';
import 'LoginSuccess_body.dart';

class LoginSuccess extends StatefulWidget {
  const LoginSuccess({Key? key}) : super(key: key);
  static const String id = "LoginSuccess_id";

  @override
  State<LoginSuccess> createState() => _LoginSuccessState();
}

class _LoginSuccessState extends State<LoginSuccess> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: kMaingradient,
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Login Success",
              style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          backgroundColor: Colors.transparent,
          body: Body(),
        ),
      ),
    );
  }
}
