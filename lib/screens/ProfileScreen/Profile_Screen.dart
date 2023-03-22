import 'package:flutter/material.dart';
import 'package:shopforcoffee/constants.dart';
import 'ProfileScreen_Body.dart';

class Profile_Screen extends StatelessWidget {
  const Profile_Screen({Key? key}) : super(key: key);

  static const String id = "Profile_Screen";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: kMaingradient,
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              "Your Profile",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
          body: Body(),
        ),
      ),
    );
  }
}
