import 'package:flutter/material.dart';
import 'package:shopforcoffee/constants.dart';
import 'package:shopforcoffee/sizeconfig.dart';
import 'HomeScreen_body.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);
  static const String id = "Home_Screen";

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int _Selectedpage = 0;




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: kMaingradient,
        ),
        child: Scaffold(
          body: Body(),

        ),
      ),
    );
  }
}
