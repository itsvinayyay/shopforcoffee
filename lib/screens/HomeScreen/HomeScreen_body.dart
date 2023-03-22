import 'package:flutter/material.dart';
import 'package:shopforcoffee/constants.dart';
import 'package:shopforcoffee/screens/DetailsScreen/Details_Screen.dart';
import 'package:shopforcoffee/sizeconfig.dart';
import 'HomeScreen_Header.dart';
import 'HomeScreen_Banner.dart';
import 'HomeScreen_QuickActions.dart';
import 'HomeScreen_CoffeeTypes.dart';
import 'package:shopforcoffee/Models/Products.dart';
import 'HomeScreen_Carousel.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            HomeHeader(),
            SizedBox(
              height: getproportionatescreenheight(10),
            ),
            HomeScreenBanner("Coffee this season is", "at flat 20% off!"),
            SizedBox(
              height: getproportionatescreenheight(10),
            ),
            QuickActions(),
            SizedBox(
              height: getproportionatescreenheight(30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Specially chosen",
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "See More",
                  style: kimptext.copyWith(
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: getproportionatescreenwidth(20),
            ),
            CoffeeTypes(),
            SizedBox(
              height: getproportionatescreenheight(30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular picks",
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "See More",
                  style: kimptext.copyWith(
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: getproportionatescreenheight(10),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    Items.length,
                    (index) => Product_Carousel(
                      index: index,
                      onpress: () => Navigator.pushNamed(context, DetailsPage.id, arguments: Productdetails_Args(product: Items[index]))
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

