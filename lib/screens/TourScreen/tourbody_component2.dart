import 'package:flutter/material.dart';

class Commonbutton extends StatelessWidget {
  late String text;
  late VoidCallback onpress;
  Commonbutton(this.text, this.onpress);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Colors.black,
      ),
      height: 120,
      width: 120,
      child: Center(
        child: GestureDetector(
          onTap: onpress,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
