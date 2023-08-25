import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';
import 'package:swishlist_ui/Screens/LoginScreen/SecondScreen.dart';

import 'package:swishlist_ui/widgets/buttons.dart';
import 'package:swishlist_ui/widgets/outlinebutton.dart';

import '../../Constants/colors.dart';
import 'Signin.dart';
class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:Column(
          children: [
             Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
            SizedBox(height: 145),
            Center(child: Image.asset('assets/images/SplashScreen.png')),
            SizedBox(height: 36),
            Text('Welcome to SwishList',style: Ubun_700_24_29),
            SizedBox(height: 77),
           MainButton(height: 52,width: 328,title: 'Signup withh Phone',txtstyle: robo_500_14,color: kF7E641 , onTap: () {
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => SecondScreen()),
             );
             },
           ),
            //kF7E641
            SizedBox(height: 28),
            Text('Or continue with',style: robo_400_12_70),
            SizedBox(height: 12),
      Row(children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
   outlinebutton(height: 48, width: 104, imagesourse: 'assets/Icons/Gmail.png', title: 'Email', colorr: kA3A3A3),
            SizedBox(width: 8),
        outlinebutton(height:48 , width:104 , imagesourse: 'assets/Icons/facebook.png', colorr:kA3A3A3,title: ''),
        SizedBox(width: 8),
        outlinebutton(height:48 , width:104 , imagesourse: 'assets/Icons/google.png', colorr:kA3A3A3,title: ''),
      ]),
            SizedBox(height: 64),
               Row(
                 children: [
                   Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
                   Text('Already a member?? ',style: robo_400_14_0,
              ),
                   GestureDetector(
                       onTap: (){
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => Signin()),
                         );
                       },
                       child: Text('Log in',style: robo_500_14_00)),
                   SizedBox(width: 2),
                   Image.asset('assets/Icons/playlogo.png')
                 ])])
    );
  }
}
