import 'package:flutter/material.dart';
import 'package:shopforcoffee/sizeconfig.dart';
import 'package:shopforcoffee/Models/Products.dart';

class Image_Preview extends StatefulWidget {
  const Image_Preview({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<Image_Preview> createState() => _Image_PreviewState();
}

class _Image_PreviewState extends State<Image_Preview> {
  int SelectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            height: getproportionatescreenheight(300),
            child: AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                child: Image.asset(widget.product.images[SelectedImage]),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        SizedBox(
          height: getproportionatescreenheight(10),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              widget.product.images.length, (index) => buildPreviews(index)),
        )
      ],
    );
  }

  GestureDetector buildPreviews(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          SelectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 5),
        height: getproportionatescreenheight(45),
        width: getproportionatescreenwidth(100),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: SelectedImage == index ? Colors.brown : Colors.grey, width: 3.0),
          image: DecorationImage(
            image: AssetImage(widget.product.images[index]),
          ),),
      ),
    );
  }
}
