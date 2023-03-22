import 'package:flutter/material.dart';
import 'package:shopforcoffee/constants.dart';
import 'package:shopforcoffee/sizeconfig.dart';
class BuildErrors extends StatelessWidget {
  const BuildErrors({
    Key? key,
    required this.Errors,
  }) : super(key: key);

  final List<String> Errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(Errors.length, (index) => buildRow(Errors[index]),),
    );
  }

  Row buildRow(String text) {
    return Row(
        children: [
          Icon(Icons.error, color: Colors.red.shade200,),
          SizedBox(width: getproportionatescreenwidth(3),),
          Text(text, style: kimptext,),
        ],
      );
  }
}
