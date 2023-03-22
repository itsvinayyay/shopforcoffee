import 'package:flutter/material.dart';
import 'package:shopforcoffee/constants.dart';
import 'package:shopforcoffee/screens/ProfileScreen/Profile_Screen.dart';
import 'package:shopforcoffee/screens/CartScreen/Cart_Screen.dart';
import 'package:shopforcoffee/screens/HomeScreen/Home_Screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shopforcoffee/sizeconfig.dart';

class Bottom_Nav extends StatefulWidget {
  const Bottom_Nav({Key? key}) : super(key: key);

  static const String id = "Bottom_Nav";

  @override
  State<Bottom_Nav> createState() => _Bottom_NavState();
}

class _Bottom_NavState extends State<Bottom_Nav> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    Home_Screen(),
    CartScreen(),
    Profile_Screen(),
  ];

  void _onitemtapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey.shade900,
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, -30),
              blurRadius: 20,
              color: Colors.black.withOpacity(0.20),
            )
          ]
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getproportionatescreenwidth(20),
            vertical: getproportionatescreenheight(10),
          ),
          child: GNav(
            backgroundColor: Colors.grey.shade900,
            color: Colors.white,
            activeColor: Colors.white,
            gap: 10,
            tabBackgroundColor: Color(0xFFE48C35),
            padding: EdgeInsets.all(12),
            selectedIndex: _selectedIndex,
            onTabChange: _onitemtapped,
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.shopping_cart,
                text: "Cart",
              ),
              GButton(
                icon: Icons.person,
                text: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}


