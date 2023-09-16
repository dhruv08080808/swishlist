import 'package:flutter/material.dart';
import 'package:swishlist_ui/Screens/Friend/AddFriend.dart';

import '../../Constants/textstyle.dart';
import 'AddListOfFriends.dart';
import 'FriendMessage.dart';
import 'FriendProfile.dart';

class Friend extends StatefulWidget {
  const Friend({super.key});

  @override
  State<Friend> createState() => _FriendState();
}

class _FriendState extends State<Friend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Friends',style: ubun_700_24_29),
        actions: [
          Image.asset('assets/Icons/friend Search.png'),
          GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddListOfFriends()),
                );
              },
              child: Image.asset('assets/Icons/friend add.png')),
          GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FriendMessage()),
                );
              },
              child: Image.asset('assets/Icons/freind message.png')),
        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('24',style: robo_500_12_70),
                Row(children: [
                  Text('Name',style: robo_500_14_22),
                  SizedBox(width: 4),
Image.asset('assets/Icons/friend down.png'),
                  SizedBox(height: 8),
                ],)
            ]),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FriendProfile()),
                );
              },
                child: profile(Txt: 'Andy Bernard', imgg: 'assets/images/friend 1 circle.png', imggg: 'AndyAngie3260')),
            SizedBox(height: 16),
            profile(Txt: 'Jan Levinson', imgg: 'assets/images/friend 2 circle.png', imggg: 'brunopadilha'),
            SizedBox(height: 16),
            profile(Txt: 'Arlene McCoy', imgg: 'assets/images/friend 3 circle.png', imggg: 'marcelosalomao'),
            SizedBox(height: 16),
            profile(Txt: 'Annette Black', imgg: 'assets/images/friend 4 circle.png', imggg: 'johndue'),
            SizedBox(height: 16),
            profile(Txt: 'Guy Hawkins', imgg: 'assets/images/friend 5 circle.png', imggg: 'marciacristina'),
            SizedBox(height: 16),
                profile(Txt: 'Bessie Cooper', imgg: 'assets/images/friend 6 circle.png', imggg: 'pedrogadelha'),
          ],),
        ),
      ),
    );
  }
}
//----------------------------------
class profile extends StatelessWidget {
  final String Txt;
  final String imgg;
  final String imggg;
  const profile({super.key, required this.Txt, required this.imgg, required this.imggg});

  @override
  Widget build(BuildContext context) {
    return  Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imgg),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(Txt,style: robo_400_14_b_29),
            SizedBox(height: 8),
            Text(imggg,style: robo_400_12_70),
          ],
        ),
        Spacer(),

      ],
    );
  }
}

