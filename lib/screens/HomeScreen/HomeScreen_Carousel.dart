import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopforcoffee/sizeconfig.dart';
import 'package:shopforcoffee/Models/Products.dart';
import 'package:shopforcoffee/constants.dart';


class Product_Carousel extends StatelessWidget {
  Product_Carousel(
      {required this.index, this.width = 300, this.aspectRatio = 1, required this.onpress});

  late int index;
  late double width, aspectRatio;
  late GestureTapCallback onpress;


  bool islike = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onpress,
        child: SizedBox(
          width: getproportionatescreenwidth(width),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade400,
                    image: DecorationImage(
                      image: AssetImage(Items[index].images[0]),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(

                  Items[index].Title,
                  style: kimptext.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 12),
                  maxLines: 2,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${Items[index].pricing.toString()}",
                    style: TextStyle(
                        color: Colors.brown.shade700,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: getproportionatescreenheight(25),
                      width: getproportionatescreenwidth(70),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade500,
                      ),
                      child: IconButton(
                          padding: EdgeInsets.zero,
                          splashRadius: 15,
                          onPressed: () {

                          },
                          icon: Icon(
                            Icons.favorite,
                            color: islike ? Colors.red : Colors.grey.shade700,
                            size: 20,
                          )))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
