import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopforcoffee/sizeconfig.dart';
class HomeScreenBanner extends StatefulWidget {
  late String intro;
  late String Mainline;
  HomeScreenBanner(this.intro, this.Mainline);

  @override
  State<HomeScreenBanner> createState() => _HomeScreenBannerState();
}

class _HomeScreenBannerState extends State<HomeScreenBanner> {
  int _currentpage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  late Timer _timer;
  int pagenumber = 0;


  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (_currentpage < 3) {
        _currentpage++;
      } else {
        _currentpage = 0;
      }

      _pageController.animateToPage(_currentpage,
          duration: Duration(milliseconds: 350), curve: Curves.easeIn);
    });
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getproportionatescreenheight(100),
          child: PageView(
            onPageChanged: (value){
              setState(
                    () {
                      pagenumber = value;
                },
              );
            },
            controller: _pageController,
            children: [
              /* Don't forget to change the value in the slider as well if you change
              the number of items in this list. */
              buildContainers(Colors.brown.shade200,
                Colors.brown.shade400,
                Colors.brown.shade600,
                Colors.brown.shade800,
                Colors.brown.shade900,
                  "Coffee this season is",
                  "at flat 20% off!",
              ),
              buildContainers(Color(0xFFF2C9A5),
                Color(0xFFEAAC74),
                Color(0xFFE48C35),
                Color(0xFFBD732E),
                Color(0xFF8C5B2F),
                "Check out the new arrivals",
                "at a reasonable price!",),
              buildContainers(Color(0xFFF2D28D),
                Color(0xFFF2CA7C),
                Color(0xFFEB9736),
                Color(0xFFDF8327),
                Color(0xFFB95405),
                "Coffee will increase",
                "your productivity",),
            ],

          ),
        ),
        SizedBox(height: getproportionatescreenheight(5),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) => buildContainer(index)),
        ),
      ],
    );
  }

  AnimatedContainer buildContainer(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.all(0.5),
            height: 10,
            width: pagenumber == index ? 25 : 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: pagenumber==index ? Colors.brown : Colors.grey.shade400,
            ),
          );
  }

  Container buildContainers(Color reqdcolor1, Color reqdcolor2, Color reqdcolor3, Color reqdcolor4, Color reqdcolor5, String intro, String Mainline) {
    return Container(
        height: getproportionatescreenheight(100),
        width: getproportionatescreenwidth(730),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  reqdcolor1,
                  reqdcolor2,
                  reqdcolor3,
                  reqdcolor4,
                  reqdcolor5,
                ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Text(
                intro,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text(
                Mainline,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            )
          ],
        ),
      );
  }
}
