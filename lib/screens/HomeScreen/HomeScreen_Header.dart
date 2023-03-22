import 'package:flutter/material.dart';
import 'package:shopforcoffee/screens/CartScreen/Cart_Screen.dart';
import 'package:shopforcoffee/sizeconfig.dart';
import 'HomeScreen_TextField.dart';
import 'HomeScreen_IconButtons.dart';
class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        children: [
          TextFieldHome(),
          SizedBox(
            width: getproportionatescreenwidth(10),
          ),
          Essentials(Icons.shopping_cart, 0, (){
            Navigator.pushNamed((context), CartScreen.id);
          }),
          SizedBox(
            width: getproportionatescreenwidth(10),
          ),
          Essentials(Icons.notifications_active, 4, (){}),
        ],
      ),
    );
  }
}

