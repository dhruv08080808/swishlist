import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';
import '../../widgets/buttons.dart';

class AddFriend extends StatefulWidget {
  const AddFriend({super.key});

  @override
  State<AddFriend> createState() => _AddFriendState();
}

class _AddFriendState extends State<AddFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Friends',style: ubun_700_24_29),
      actions: [
        Image.asset('assets/Icons/friend Search.png'),
        Image.asset('assets/Icons/friend add.png'),
        Image.asset('assets/Icons/freind message.png'),
        ],

      ),
      body: Column(
crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(child: Image.asset('assets/images/friend Image.png')),
          SizedBox(height: 24),
          Text('Add friends to share your profile \n and your favorite product',style: robo_500_14_29),
          SizedBox(height: 24),
          Container(
            height: 52,
            width: 328,
            color: kF7E641,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Icons/friend add icon.png'),
                  SizedBox(width: 4),
                  Text('Add Friend',style: robo_400_14_b_29)
                ],
              ),
            ),
          )
      ],),
    );
  }
}
