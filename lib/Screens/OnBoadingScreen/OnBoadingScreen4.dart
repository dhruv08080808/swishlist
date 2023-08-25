import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';

class OnBoadingScreen4 extends StatefulWidget {
  final Function onBackTap;
  const OnBoadingScreen4({super.key, required this.onBackTap});

  @override
  State<OnBoadingScreen4> createState() => _OnBoadingScreen4State();
}

class _OnBoadingScreen4State extends State<OnBoadingScreen4> {
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
            Text('See what your friends are buying and owning.',style: ubun_700_24_29,textAlign: TextAlign.center),
            SizedBox(height: 16),
            Text('and what they say about it !',style: robo_400_14_70),
            Spacer(),


          ],),
      ),
    );
  }
}
