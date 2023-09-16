import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:swishlist_ui/Screens/OnBoadingScreen/OnBoadingScreen2.dart';
import 'package:swishlist_ui/Screens/OnBoadingScreen/OnBoadingScreen4.dart';
import 'package:swishlist_ui/Screens/OnBoadingScreen/OnBoadingScreen5.dart';

import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';
import 'OnBoadingScreen3.dart';

class OnBoadingScreen1 extends StatefulWidget {
  final Function onBackTap;
  const OnBoadingScreen1({super.key, required this.onBackTap});

  @override
  State<OnBoadingScreen1> createState() => _OnBoadingScreen1State();
}

class _OnBoadingScreen1State extends State<OnBoadingScreen1> {
  final PageController _pageController =
  PageController(initialPage: 0, viewportFraction: 1);
  int _activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFFFFFF,
      body:
      Stack(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 25),
          child: SingleChildScrollView(
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 98),
                Text('All your wishlists at one place, even better.',style: ubun_700_26_29,textAlign: TextAlign.center),
                SizedBox(height: 16),
                Container(
                    height: 40,
                    width: double.infinity,
                    child: Text('Save prodcuts from amazon or etsy to your wanted,unwanted or already owned list',style: robo_400_14_70,textAlign: TextAlign.center,)),
                SizedBox(height: 40),
                Image.asset('assets/images/onboadingimg.png',height: 293),
                Row(
                  children: [
                    // CircularPercentIndicator(
                    //   radius: 40.0,
                    //   percent: 0.20,
                    //   lineWidth: 10,
                    //   startAngle: 30,
                    //   progressColor: Colors.yellow,
                    //   fillColor: Colors.transparent,
                    //   circularStrokeCap: CircularStrokeCap.round,
                    //   arcType: ArcType.FULL_REVERSED,
                    // ),
                ]
    )
]
    ),
          )
        )
    ],

          )
    );
  }
}
