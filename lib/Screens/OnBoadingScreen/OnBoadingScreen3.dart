import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';

class OnBoadingScreen3 extends StatefulWidget {
  final Function onBackTap;
  const OnBoadingScreen3({super.key, required this.onBackTap});

  @override
  State<OnBoadingScreen3> createState() => _OnBoadingScreen3State();
}

class _OnBoadingScreen3State extends State<OnBoadingScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFFFFFF,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 98),
            Text('Share with each other, buy gifts quicker and easier.',style: ubun_700_24_29,textAlign: TextAlign.center),
            SizedBox(height: 16),
            Text('Even anonmously.',style: robo_400_14_70),
            Spacer(),


          ],),
      ),
    );
  }
}
