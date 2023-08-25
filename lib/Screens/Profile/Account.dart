import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';
import '../../widgets/Appbar.dart';
class Accountt extends StatefulWidget {
  const Accountt({super.key});

  @override
  State<Accountt> createState() => _AccounttState();
}

class _AccounttState extends State<Accountt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(bar: 'Account',
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        child: Column(
          children: [
            SizedBox(height: 16),

            acc(txt: 'Username', username: 'MichieMaster34'),
            SizedBox(height: 16),
            acc(txt: 'Email', username: 'Harrywilson134@gmail.com'),
            SizedBox(height: 16),
            acc(txt: 'Phone', username: '+18397840844'),
            SizedBox(height: 16),
            acc(txt: 'Change Password', username: ''),
            SizedBox(height: 16),
            acc(txt: 'Google ', username: ''),


            Spacer(),
            Container(
              height: 52,
              width: 328,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: kF74141)
              ),
              child: Center(child: Text('Delete Account',style: robo_500_14_C3)),
            )
          ],),
      ),
    );
  }
}
//----
class acc extends StatelessWidget {
  final String txt;
  final String username;
  const acc({super.key, required this.txt, required this.username});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(txt,style:robo_400_14_70),

          Row(
            children: [
              Text(username,style: robo_400_14_b_29,),
              SizedBox(width: 10),
              Image.asset('assets/Icons/direaction right.png'),
            ],
          ),

        ],
      ),
    );
  }
}
