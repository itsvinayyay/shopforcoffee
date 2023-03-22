import 'package:flutter/material.dart';

class Build_Desc extends StatelessWidget {
  late Color color;
  late Widget Child;

  Build_Desc({required this.color, required this.Child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      // padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Child,
    );
  }
}
