import 'package:flutter/material.dart';
import 'package:shopforcoffee/Models/Products.dart';
import 'package:shopforcoffee/constants.dart';
import 'DetailsScreen_Body.dart';

import 'DetailsScreen_CustomAppbar.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);
  static const String id = "Details_Screen";

  @override
  Widget build(BuildContext context) {
    final Productdetails_Args arguments =
        ModalRoute.of(context)!.settings.arguments as Productdetails_Args;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: kMaingradient,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          // PreferredSize(
          //   preferredSize: Size.fromHeight(72),
          // child: AppBar(
          //   leading: Padding(
          //     padding: const EdgeInsets.only(top: 10, left: 10),
          //     child: IconButton(
          //       onPressed: () => Navigator.pop(context),
          //       icon: Icon(Icons.arrow_back_ios),
          //     ),
          //   ),
          // ),
          appBar: Custom_Appbar(context, arguments.product.ratings),
          body: Body(product: arguments.product,),
        ),
      ),
    );
  }
}



class Productdetails_Args {
  late Product product;

  Productdetails_Args({required this.product});
}
