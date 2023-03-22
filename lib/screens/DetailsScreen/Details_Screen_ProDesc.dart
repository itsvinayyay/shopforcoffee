import 'package:flutter/material.dart';
import 'package:shopforcoffee/sizeconfig.dart';
import 'package:shopforcoffee/Models/Products.dart';
class Product_Description extends StatefulWidget {
  const Product_Description({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<Product_Description> createState() => _Product_DescriptionState();
}

class _Product_DescriptionState extends State<Product_Description> {
  late IconData _iconData = widget.product.isfav ? Icons.favorite : Icons.favorite_border;
  void toggleIcon(){
    setState(() {
      if(_iconData == Icons.favorite){
        _iconData = Icons.favorite_border;
      } else{
        _iconData = Icons.favorite;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Text(
            widget.product.Title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: build_Like(ontap: toggleIcon, iconData: _iconData,),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getproportionatescreenwidth(20),
            right: getproportionatescreenwidth(40),
          ),
          child: Text(
            widget.product.Description,
            style: TextStyle(
              color: Colors.grey.shade100,
              fontSize: 15,
            ),
            textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(
          height: getproportionatescreenheight(10),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: getproportionatescreenwidth(10),
              ),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "Show More",
                  style: TextStyle(
                    color: Color(0xFFEAAC74),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 3,
            ),
            Icon(
              Icons.chevron_right,
              color: Color(0xFFEAAC74),
            ),
          ],
        ),
        SizedBox(
          height: getproportionatescreenheight(3),
        ),
      ],
    );
  }
}

class build_Like extends StatelessWidget {
  const build_Like({
    super.key, required this.ontap, required this.iconData,
  });

  final VoidCallback ontap;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: getproportionatescreenheight(40),
      width: getproportionatescreenwidth(150),
      decoration: BoxDecoration(
        color: Color(0xFFEAAC74),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: IconButton(
        onPressed: ontap,
        icon: Icon(
          iconData,
          color: Colors.red,
          size: 25,
        ),
      ),
    );
  }
}