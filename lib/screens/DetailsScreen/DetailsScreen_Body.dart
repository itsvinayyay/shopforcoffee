import 'package:flutter/material.dart';
import 'package:shopforcoffee/Models/Products.dart';
import 'package:shopforcoffee/sizeconfig.dart';
import 'DetailsScreen_ImagePrev.dart';
import 'Details_Screen_ProDesc.dart';
import 'Details_Screen_DescContainer.dart';
import 'Details_Screen_ColorPallets.dart';

class Body extends StatelessWidget {
  Body({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image_Preview(product: product),
        Expanded(

          
          child: Build_Desc(
            color: Color(0xFF8C5B2F),
            Child: Column(
              children: [
                Product_Description(product: product),
                Build_Desc(
                  color: Colors.white,
                  Child: Column(
                    children: [
                      Color_Showcase(product: product),
                      Build_Desc(
                        color: Color(0xFFEAAC74),
                        Child: Column(
                          children: [
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: getproportionatescreenheight(6)),
                                width: getproportionatescreenwidth(300),
                                height: getproportionatescreenheight(50),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(Icons.add_shopping_cart, size: 30, color: Colors.white,)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
