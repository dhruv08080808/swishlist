import 'package:flutter/material.dart';

import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';
import '../../widgets/Appbar.dart';
import '../Profile/UserProfile.dart';
import 'Notification.dart';
class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}
class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kF7E641 ,
      appBar:
     AppBar(
       backgroundColor: kF7E641,
     ),
      body: Column(children: [
        Stack(
          children: [
            Column(children: [
              SizedBox(height: 20),
              Text('Settings',style: ubun_700_28_29),
              SizedBox(height: 48),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 146,
                width: 328,
               decoration: BoxDecoration(
                 color: kFFFFFF,
                 borderRadius: BorderRadius.circular(12),
               ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  SizedBox(height: 20),
                  Text('User',style:robo_400_12_A3,),
                    SizedBox(height: 8),
                    GestureDetector(
                        onTap: (){

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  UserProfile()),
                          );

                        },
                        child: opition(txt: 'Account')),
                    SizedBox(height: 4),
                    opition(txt: 'Privacy'),
                ],),
              ),
              SizedBox(height: 12),
            Stack(

              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      height: 146,
                      width: 328,
                      decoration: BoxDecoration(
                        color: kFFFFFF,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text('App',style:robo_400_12_A3,),

                        SizedBox(height: 8),

                        GestureDetector(
                          onTap: (){

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const noti()),
                            );
                          },
                          child: Container(

                              child: opition(txt: 'Notifications')),
                        ),
                        SizedBox(height: 4),
                        Container(
                       width: 296,
                         height: 40,
                        child: Text('Share with your friends',style: robo_500_14_39,))]))),]),
            SizedBox(height: 12),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 146,
                width: 328,
                decoration: BoxDecoration(
                  color: kFFFFFF,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text('Support',style:robo_400_12_A3,),
                    SizedBox(height: 8),
                    opition(txt: 'Help & Support'),
                    SizedBox(height: 4),
                    opition(txt: 'Agreements'),
                  ],),
              ),
            ]),
          ],
        ),
      ],),
    );
  }
}
//--------------------------------
class opition extends StatelessWidget {
  final String txt;
  const opition({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 296,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(txt,style: robo_500_14_39,),
        Image.asset('assets/Icons/right arrow.png')
      ],),
    );
  }
}
