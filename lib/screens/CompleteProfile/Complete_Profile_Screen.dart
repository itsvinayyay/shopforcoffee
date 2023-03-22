import 'package:flutter/material.dart';
import 'package:shopforcoffee/constants.dart';
import 'Complete_Profile_Body.dart';
class CompleteProfile extends StatefulWidget {
  const CompleteProfile({Key? key}) : super(key: key);
  static const String id = "Complete_Profile";

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Container(
      decoration: BoxDecoration(
        gradient: kMaingradient,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Complete Profile", style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),),
          centerTitle: true,

        ),
        body: Body(),
      ),
    ),);
  }
}
