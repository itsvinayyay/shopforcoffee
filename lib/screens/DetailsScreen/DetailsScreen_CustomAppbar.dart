import 'package:flutter/material.dart';
import 'package:shopforcoffee/sizeconfig.dart';
class Custom_Appbar extends PreferredSize {
  final double ratings;

  Custom_Appbar(BuildContext context, this.ratings)
      : super(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              height: getproportionatescreenheight(33),
              width: getproportionatescreenwidth(160),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ratings.toString(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  )
                ],
              ),
            ),
          )
        ],
      ));
}