import 'package:flutter/material.dart';

import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';

class Pets extends StatefulWidget {
  const Pets({super.key});

  @override
  State<Pets> createState() => _PetsState();
}

class _PetsState extends State<Pets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Pets',style: robo_500_16_29),
          Text('60% Completed',style: robo_400_12_70),
        ],
      ),

      ),
      body: Column(
        children: [
        LinearProgressIndicator(
        backgroundColor: kC09B3D,
        valueColor: AlwaysStoppedAnimation(kC09B3D),
        minHeight: 8,
      ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
  Container(
  width: 156,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    border: Border.all(color: kE0E0E0),
  ),
  child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38,vertical: 24),
          child: Image.asset('assets/Icons/catt.png'),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Stevie',style: robo_400_14_b_29),
                Row(children: [
                  Text('Cat',style: inter_400_14_70),
                  SizedBox(width: 8),
                  Image.asset('assets/Icons/dot.png'),
                  SizedBox(width: 8),
                  Text('Persian',style: inter_400_14_70),
                ],)
              ],
            ),
Image.asset('assets/Icons/right arrow.png'),
          ],),
        )
  ]),
),
                SizedBox(width: 16),
                Container(
                  width: 156,
                  height: 187,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: kE0E0E0),
                ),
                  child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 38,vertical: 24),
                          child: Image.asset('assets/images/Pets Print.png',height: 80,width: 80),

                        ),
SizedBox(height: 12),

                        Text('+ Add more',style: robo_600_14_CO,)

                      ]),
                ),
            ],),
          ),

      ],
      )
    );
  }
}
