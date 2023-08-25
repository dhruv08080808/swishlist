import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:swishlist_ui/Constants/colors.dart';
import 'package:swishlist_ui/Screens/OnBoadingScreen/OnBoadingScreen4.dart';
import 'package:swishlist_ui/Screens/OnBoadingScreen/OnBoadingScreen5.dart';
import '../LoginScreen/LoginScreen.dart';
import 'final.dart';
import 'OnBoadingScreen1.dart';
import 'OnBoadingScreen2.dart';
import 'OnBoadingScreen3.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final pageController = PageController();
  bool animated1=false;
  bool animated2=true;
  bool animated3=true;
  bool animated4=true;
  bool animated5=true;
  double percent=0.1;
  double percent1=0.0;
  double percent2=0.0;
  double percent3=0.0;
  double percent4=0.0;
  double percent5=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
bottomNavigationBar: SingleChildScrollView(
  child: Container(
    child: Column(children: [
      Stack(children: [
        CircularPercentIndicator(
          radius:100,
          lineWidth: 10,
          animation: true,
          startAngle: 60,
          percent: percent,
          animateFromLastPercent: animated1,
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: percent1== 0.0 ? kEDEDF1:KF7E641,
          backgroundColor: Colors.transparent,

        ),
        CircularPercentIndicator(
          radius:100,
          lineWidth: 10,
          animation: true,
          startAngle: 120,
          percent: percent,
          animateFromLastPercent: animated2,
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: percent2== 0.0 ? kEDEDF1:KF7E641,
          backgroundColor: Colors.transparent,

        ),
        CircularPercentIndicator(
          radius:100,
          lineWidth: 10,
          animation: true,
          startAngle: 180,
          percent: percent,
          animateFromLastPercent: animated3,
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: percent3== 0.0 ? kEDEDF1:KF7E641,
          backgroundColor: Colors.transparent,

        ),
        CircularPercentIndicator(
          radius:100,
          lineWidth: 10,
          animation: true,
          startAngle: 240,
          percent: percent,
          animateFromLastPercent: animated4,
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: percent4== 0.0 ? kEDEDF1:KF7E641,
          backgroundColor: Colors.transparent,

        ),
        CircularPercentIndicator(
          radius:100,
          lineWidth: 10,
          animation: true,
          startAngle: 300,
          percent: percent,
          animateFromLastPercent: animated5,
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: percent5== 0.0 ? kEDEDF1:KF7E641,
          backgroundColor: Colors.transparent,
        ),
        CircularPercentIndicator(
          radius: 100,
          lineWidth: 10,
          animation: true,
          percent: percent,
          animateFromLastPercent: true,
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: kF7E641,
          backgroundColor: Colors.transparent,
          center: GestureDetector(
            onTap: (){
              if(pageController.page==0){
                pageController.animateTo(1, duration: Duration(milliseconds: 300), curve: Curves.fastOutSlowIn);
                setState(() {
                  percent=0.10001;
                  percent1=0.1;
                });
              }
              else if(pageController.page==1){
                pageController.animateTo(2, duration: Duration(milliseconds: 300), curve: Curves.fastOutSlowIn);
                setState(() {
                  percent=0.10000;
                  animated1=true;
                  animated2=false;
                  percent2=0.1;
                });

              }
              else if(pageController.page==2){
                pageController.animateTo(3, duration: Duration(milliseconds: 300), curve: Curves.fastOutSlowIn);
                setState(() {
                  percent=0.10001;
                  animated2=true;
                  animated3=false;
                  percent3=0.1;
                });

              }
              else if(pageController.page==3){
                pageController.animateTo(4, duration: Duration(milliseconds: 300), curve: Curves.fastOutSlowIn);
                setState(() {
                  percent=0.10000;
                  animated3=true;
                  animated4=false;
                  percent4=0.1;
                });

              }
              else if(pageController.page==4){
                pageController.animateTo(5, duration: Duration(milliseconds: 300), curve: Curves.fastOutSlowIn);
                setState(() {
                  animated4=true;
                  animated5=false;
                  percent1=0.0;
                  percent2=0.0;
                  percent3=0.0;
                  percent4=0.0;
                  percent5=0.0;
                  percent=1;

                });
              }
              else{
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LoginScreen()),);
              }
            },
            child: Container(
              height: 64,
              width: 64,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: KF7E641,
              ),
              child: Icon(percent==0.2?Icons.done:Icons.arrow_forward_ios_rounded,color: Colors.black),
            ),
          ),
        ),

      ]),
      SizedBox(height: 30),
    ],),
  ),
),
      body: Column(
          children: [
      Expanded(
      child: PageView(
      physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          OnBoadingScreen1(
              onBackTap: () {
                pageController.previousPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn,
                );
                setState(() {
                  animated2 = false;
                  animated3 = true;
                  animated4 = true;
                  percent = 0.10001;
                  percent2 = 0.0;
                });
              }
          ),
        OnBoadingScreen2(
        onBackTap: () {
      // pageController.previousPage(
      //                 duration: Duration(milliseconds: 500),
      //                 curve: Curves.fastOutSlowIn,
      //               );
      //               setState(() {
      //                 animated1 = false;
      //                 animated2 = true;
      //                 animated3 = true;
      //                 percent = 0.10000;
      //                 percent1 = 0.1;
      //               });
    },
    ),
    OnBoadingScreen3(
    onBackTap: () {
    pageController.previousPage(
    duration: Duration(milliseconds: 500),
    curve: Curves.fastOutSlowIn,
    );
    setState(() {
    animated1 = false;
    animated2 = true;
    animated3 = true;
    percent = 0.10000;
    percent1 = 0.0;
    });
    },
    ),
    OnBoadingScreen1(
    onBackTap: () {
      pageController.previousPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn,
      );
      setState(() {
        animated2 = false;
        animated3 = true;
        animated4 = true;
        percent = 0.10001;
        percent2 = 0.0;
      });
      // njunjnjnjnjk,ooooooooooooooooooooooooooooooooooooooooooooooolkol,
    }
    ),
    OnBoadingScreen4(
    onBackTap: () {
    pageController.previousPage(
    duration: Duration(milliseconds: 500),
    curve: Curves.fastOutSlowIn,
    );
    setState(() {
    animated3 = false;
    animated4 = true;
    animated5 = true;
    percent = 0.10000;
    percent3 = 0.0;
    });
    },
    ),
    OnBoadingScreen5(
    onBackTap: () {
    pageController.previousPage(
    duration: Duration(milliseconds: 500),
    curve: Curves.fastOutSlowIn,
    );
    setState(() {
    animated4 = false;
    animated5 = true;
    percent = 0.10001;
    percent4 = 0.0;
    });
    },
    ),
    IntroFinal(
    onBackTap: () {
    pageController.previousPage(
    duration: Duration(milliseconds: 500),
    curve: Curves.fastOutSlowIn,
    );
    setState(() {
    percent = 0.10000;
    animated5 = false;
    percent1 = 0.1;
    percent2 = 0.1;
    percent3 = 0.1;
    percent4 = 0.1;
    percent5 = 0.0;
    });
    },
    ),
    ]
    )
    )
    ]
    )
    );
  }
}
