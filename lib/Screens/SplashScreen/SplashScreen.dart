import 'dart:async';

import 'package:flutter/material.dart';
import 'package:swishlist_ui/Screens/LoginScreen/LoginScreen.dart';


import '../../Constants/colors.dart';
import '../OnBoadingScreen/introoscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => IntroPage())));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
      children: [
           Container(
             height: double.infinity,
             width: double.infinity,
             color: Colors.white,
             child:
             Center(
                 child: Image.asset('assets/images/SplashScreen.png'),
               )),
        Positioned(
            child: Image.asset('assets/images/UpperVector.png'),
          top: -0,
        right: 0,
          left: 50),
        Positioned(child:
            Image.asset('assets/images/LowerVector.png'),
          bottom: 0)])
    );

  }
}
