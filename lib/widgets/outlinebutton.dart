import 'package:flutter/material.dart';
class outlinebutton extends StatelessWidget {
  final double height;
  final double width;
  final String imagesourse;
  final String title;
  final Color colorr;

  const outlinebutton({super.key, required this.height, required this.width, required this.imagesourse, required this.title, required this.colorr});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height:height,
        width: width,
        decoration: BoxDecoration(
            border: Border.all(
              color: colorr,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8)
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagesourse),
              SizedBox(width: 4),
              Text(title)
            ]));
  }
}
