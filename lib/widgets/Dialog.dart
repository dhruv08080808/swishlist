
import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../Constants/colors.dart';
class Dialog extends StatelessWidget {
  final String txtt;
   Dialog({super.key, required this.txtt,});
  final   namc =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
        child: Column(children: [
          Text(txtt,style: robo_500_14_29),
          SizedBox(height: 12),
          Container(
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: kF7E641)
            ),
            child: TextField(
              controller: namc,
            ),
          ),
          SizedBox(height: 16),
          Row(children: [
            Text('Visible to',style: robo_400_14_70,),
            SizedBox(width: 4),
            Image.asset('assets/Icons/icon world.png'),
            SizedBox(width: 4),
            Text('Everyone',style: robo_400_14_b_29,),
            SizedBox(width: 4,),
            Image.asset('assets/Icons/down.png'),
          ],)
        ],),
      )
    );
  }
}
