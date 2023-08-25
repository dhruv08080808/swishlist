import 'package:flutter/material.dart';

import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';
import '../../widgets/Appbar.dart';
class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(bar: 'Account',
      ),

          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
                SizedBox(height: 16),
                acc(txt: 'Contacts syncing', username: '',),
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
      width: 328,
      child: Row(
        children: [
          Text(txt,style:robo_400_14_70),
          Spacer(),
          Text(username,style: robo_400_14_b_29,),
          SizedBox(width: 10),
          Image.asset('assets/Icons/direaction right.png'),
        ],
      ),
    );
  }
}
