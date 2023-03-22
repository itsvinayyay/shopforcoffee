import 'package:flutter/material.dart';
import 'package:shopforcoffee/constants.dart';
import 'tourscreen_body1.dart';
import 'package:shopforcoffee/sizeconfig.dart';

class Tourscreen extends StatelessWidget {
  static const String id = "Tourscreen_id";
  const Tourscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    sizeconfiguration().access(context);
    return Container(
      decoration: BoxDecoration(
        gradient: kMaingradient,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Body(),
      ),
    );
  }
}
