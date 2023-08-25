import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';

class OnBoadingScreen2 extends StatefulWidget {
  final Function onBackTap;
  const OnBoadingScreen2({super.key, required this.onBackTap});

  @override
  State<OnBoadingScreen2> createState() => _OnBoadingScreen2State();
}

class _OnBoadingScreen2State extends State<OnBoadingScreen2> {
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
            Text('Let your friends know what products you desire',style: ubun_700_26_29,textAlign: TextAlign.center),
            SizedBox(height: 16),
            Text('As well as flaunt what products you own. 😎',style: robo_400_14_70),
            Spacer(),
            

        ],),
      ),
    );
  }
}
