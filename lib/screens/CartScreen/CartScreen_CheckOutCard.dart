import 'package:flutter/material.dart';
import 'package:shopforcoffee/sizeconfig.dart';

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        color: Color(0xFFEAAC74),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -30),
            blurRadius: 20,
            color: Colors.black.withOpacity(0.15),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getproportionatescreenwidth(80),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: getproportionatescreenheight(30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade400,
                  child: Icon(
                    Icons.credit_card_rounded,
                    color: Color(0xFF8C5B2F),
                    size: 30,
                  ),
                ),
                Text(
                  "Apply Voucher here >",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getproportionatescreenheight(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: getproportionatescreenheight(5),
                    ),
                    Text(
                      "\$334.47",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  height: getproportionatescreenheight(60),
                  width: getproportionatescreenwidth(300),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Check Out", style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
