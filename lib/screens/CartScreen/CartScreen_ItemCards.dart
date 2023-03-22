import 'package:flutter/material.dart';
import 'package:shopforcoffee/sizeconfig.dart';
import 'package:shopforcoffee/Models/Cart_Data.dart';

class build_CartCards extends StatelessWidget {
  const build_CartCards({
    super.key,
    required this.CartItem,
  });

  final Cart CartItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: getproportionatescreenheight(10),),
      child: Row(
        children: [
          SizedBox(
            width: getproportionatescreenwidth(200),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(CartItem.product.images[0]),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: getproportionatescreenwidth(20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: getproportionatescreenwidth(500),
                child: Text(
                  CartItem.product.Title,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 17,
                    color: Colors.black,
                  ),
                  softWrap: true,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "\$ ${CartItem.product.pricing.toString()} ",
                      style: TextStyle(
                        color: Colors.yellow.shade800,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: "x${CartItem.Numbers.toString()}",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
