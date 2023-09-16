import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';

class OnBoadingScreen5 extends StatefulWidget {
  final Function onBackTap;
  const OnBoadingScreen5({super.key, required this.onBackTap});

  @override
  State<OnBoadingScreen5> createState() => _OnBoadingScreen5State();
}

class _OnBoadingScreen5State extends State<OnBoadingScreen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFFFFFF,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 98),
            Center(child: Text('Let’s get swishing!',style: ubun_700_24_29,textAlign: TextAlign.center)),

            Spacer(),


          ],),
      ),
    );
  }
}
