import 'package:flutter/material.dart';
class RoundedIcons extends StatelessWidget {
  const RoundedIcons({
    super.key,
    required this.icons,
    required this.color, required this.ontap,
  });

  final IconData icons;
  final Color color;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: IconButton(
          onPressed: ontap,
          icon: Icon(
            icons,
            color: Colors.white,
            size: 32,
          ),
        ),
      ),
    );
  }
}

