import 'package:flutter/material.dart';

import '../Constants/colors.dart';
import '../Constants/textstyle.dart';
class MainButton extends StatelessWidget {
    final double height;
    final double width;
    final String title;
    final TextStyle txtstyle;
    final Function() onTap;
    final Color color;

  const MainButton({super.key,
    required this.height,
    required this.width,
    required this.title,
    required this.txtstyle, required this.onTap, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color:color,
         ),
        child: Center(child: Text(title,style: txtstyle)),
      ),
    );
  }
}
