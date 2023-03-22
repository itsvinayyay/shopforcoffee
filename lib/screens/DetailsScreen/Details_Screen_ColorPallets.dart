import 'package:flutter/material.dart';
import 'package:shopforcoffee/sizeconfig.dart';
import 'package:shopforcoffee/Models/Products.dart';
import 'Details_Screen_RoundedIcons.dart';

class Color_Showcase extends StatefulWidget {
  const Color_Showcase({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<Color_Showcase> createState() => _Color_ShowcaseState();
}

class _Color_ShowcaseState extends State<Color_Showcase> {
  int Selected = 0;

  void ToggleSelected(){

  }
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getproportionatescreenwidth(15)),
      child: SizedBox(
        height: getproportionatescreenheight(69),
        child: Row(
          children: [
            ...List.generate(
              widget.product.colors.length,
                  (index) => build_ColorPallets(
                product: widget.product,
                dotcolor: widget.product.colors[index],
                isSelected: Selected == index,
              ),
            ),
            SizedBox(
              width: getproportionatescreenwidth(130),
            ),
            RoundedIcons(
              icons: Icons.add,
              color: Color(0xFF8C5B2F),
              ontap: (){
                if(Selected < widget.product.colors.length -1){
                  setState(() {
                    ++Selected;
                  });
                }
                else{
                  setState(() {
                    Selected=0;
                  });
                }
              },
            ),
            SizedBox(
              width: getproportionatescreenwidth(30),
            ),
            RoundedIcons(
              icons: Icons.remove,
              color: Color(0xFF8C5B2F),
              ontap: (){
                if(Selected > 0){
                  setState(() {
                    Selected--;
                  });
                }
                else{
                  setState(() {
                    Selected=widget.product.colors.length-1;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class build_ColorPallets extends StatelessWidget {
  const build_ColorPallets({
    super.key,
    required this.product,
    required this.dotcolor,
    this.isSelected = false,
  });

  final Color dotcolor;
  final bool isSelected;

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(3),
      width: getproportionatescreenwidth(90),
      height: getproportionatescreenheight(40),
      decoration: BoxDecoration(
        border: Border.all(
            color: isSelected ? Colors.brown : Colors.grey, width: 4.0),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: dotcolor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
