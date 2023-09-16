import 'package:flutter/material.dart';

import '../Constants/textstyle.dart';

class TextFieldd extends StatelessWidget {
  final double height;
  final TextEditingController contoller;
  final String title;
  final TextStyle txtstyle;
  final Function() onTap;
  final Color color;
  final String hinttext;
  final Function()? vali;

  const TextFieldd(
      {super.key,
      required this.height,
      required this.contoller,
      required this.title,
      required this.txtstyle,
      required this.onTap,
      required this.color,
      required this.hinttext,
      this.vali});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: double.infinity,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        child: TextFormField(
          controller: contoller,

          decoration: InputDecoration(

              border: InputBorder.none,
              hintText: hinttext,
              hintStyle: robo_400_14_70,
              contentPadding: EdgeInsets.symmetric(horizontal: 15)),
        ));
  }
}
