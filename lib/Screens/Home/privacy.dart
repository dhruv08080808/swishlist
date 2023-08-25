  import 'package:flutter/material.dart';

import '../../Constants/textstyle.dart';
import '../../widgets/Appbar.dart';
class Privacy extends StatefulWidget {
  const Privacy({super.key});
  @override
  State<Privacy> createState() => _PrivacyState();
}
class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(bar: 'Privacy',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 16),
          Text('Who can see my info',style: ubun_700_24_3D),
            SizedBox(height: 8),
            Text('Change your privacy setting',style: robo_400_12_70),
            SizedBox(height: 28),
            item(txt: 'Profile', username: 'Everyone'),
            SizedBox(height: 16),
            item(txt: 'Sizes and weights', username: 'Everyone'),
            SizedBox(height: 16),
            item(txt: 'Favourites', username: 'Everyone'),
            SizedBox(height: 16),
            item(txt: 'Pets', username: 'Everyone'),
            SizedBox(height: 16),
            item(txt: 'Dates and events', username: 'Everyone'),
            SizedBox(height: 16),
            item(txt: 'Family', username: 'Everyone'),
        ],),
      ),
    );
  }
}
////------------------------------------
  class item extends StatelessWidget {
  final String txt;
  final String username;
    const item({super.key, required this.txt, required this.username});

    @override
    Widget build(BuildContext context) {
      return Container(

        height: 40,
        width: 328,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(txt,style:robo_400_14_00),
                Text(username,style: robo_400_12_75,),
              ],
            ),
            Image.asset('assets/Icons/direaction right.png'),
          ],
        ),
      );;
    }
  }
