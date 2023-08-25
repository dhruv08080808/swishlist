import 'package:flutter/material.dart';
import 'package:swishlist_ui/Screens/Friend/Chat.dart';

import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';
import '../../widgets/Appbar.dart';

class FriendMessage extends StatefulWidget {
  const FriendMessage({super.key});

  @override
  State<FriendMessage> createState() => _FriendMessageState();
}

class _FriendMessageState extends State<FriendMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(bar: 'Messages'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
        child: Column(children: [
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Chat ()),
              );
            },

              child: profile(Txt: 'Pam', status: 'Sent you a product', imgg: 'assets/images/friend mess 1.png', time: 'Just now', clr: kF7E641,)),
          SizedBox(height: 16),
          profile(Txt: 'Jan Levinson', status: 'You there ?? oye', imgg: 'assets/images/friend 1 circle.png', time: 'Just now', clr: kF7E641,),
          SizedBox(height: 16),
          profileee(Txt: 'Jan Levinson', status: 'Sent you a product', imgg: 'assets/images/friend 2 circle.png', time: '20 mins'),
          SizedBox(height: 16),
          profileee(Txt: 'Jan Levinson', status: 'I don’t like it', imgg: 'assets/images/friend 2 circle.png', time: '2 days'),

        ]),
      ),
    );
  }
}
class profile extends StatelessWidget {
  final String Txt;
  final String imgg;
  final String status;
  final String time;
  final Color clr;
  const profile({super.key, required this.Txt, required this.imgg, required this.status, required this.time, required this.clr});

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
            Text(Txt,style: robo_400_14_1F),
            SizedBox(height: 8),
            Row(
              children: [
                Text(status,style: robo_500_13_21),
                SizedBox(width: 6),
                Text(time,style: robo_400_13_21,)
              ],
            ),
          ],
        ),
        Spacer(),
      Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Container(
            height: 12,
            width: 12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: clr,
            ),

          ),
        ),
      )

      ],
    );
  }
}
class profileee extends StatelessWidget {
  final String Txt;
  final String imgg;
  final String status;
  final String time;

  const profileee({super.key, required this.Txt, required this.imgg, required this.status, required this.time});
  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imgg),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(Txt,style: robo_400_14_1F),
            SizedBox(height: 8),
            Row(
              children: [
                Text(status,style: robo_400_13_96),
                SizedBox(width: 6),
                Text(time,style: robo_400_13_96,)
              ],)])]
    );
  }
}

