import 'package:flutter/material.dart';
import 'package:shopforcoffee/sizeconfig.dart';
import 'package:shopforcoffee/Models/Cart_Data.dart';
import 'CartScreen_ItemCards.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getproportionatescreenwidth(40),
        vertical: getproportionatescreenheight(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ExpressoinmyCup",
            style: TextStyle(
              fontSize: 22,
              color: Colors.brown,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: getproportionatescreenheight(20),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: ItemsList.length,
              itemBuilder: (context, index) => Dismissible(
                onDismissed: (direction){
                  setState(() {
                    ItemsList.removeAt(index);
                  });
                },
                key: Key(ItemsList[index].product.id.toString()),
                background: Container(
                  decoration: BoxDecoration(
                    color: Colors.red.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.restore_from_trash,
                        size: 40,
                      ),
                      SizedBox(
                        width: getproportionatescreenwidth(60),
                      ),
                    ],
                  ),
                ),
                child: build_CartCards(
                  CartItem: ItemsList[index],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
