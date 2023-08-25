import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';
import '../../widgets/Appbar.dart';
class FriendProfile extends StatefulWidget {
  const FriendProfile({super.key});

  @override
  State<FriendProfile> createState() => _FriendProfileState();
}

class _FriendProfileState extends State<FriendProfile> {
  List imgg =[
    'Cycling',
    'Reading',
    'Fishing',
    'Fishing',
    'Swimming',
    'Singing',
    'Trekking',
    'Coding',
    'Biking',
    'Watches',
    'Movies and Shows'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_sharp),
        title: Text(

            'AndyAngie3260',style: robo_500_16_29),
        actions: [
          Image.asset('assets/Icons/3 dot in a line.png'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/friend 1 circle.png',height: 70,width: 70),
                  SizedBox(width: 8),
                  Text('Andy Bernard',style: Ubun_700_20,textAlign: TextAlign.center),

                ],
              ),
              SizedBox(height: 24),
              Text('My Interests',style: robo_600_14_29),
              SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                direction: Axis.horizontal,
                children: imgg.map((i) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kCBE0FA,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7.5),
                      child: Text('$i'),
                    ))).toList(),
              ),
              SizedBox(height: 32),
              smallContainer(Txt: 'Profile', imgg: 'assets/Icons/friend profile.png'),
              SizedBox(height: 8),
              smallContainer(Txt: 'Sizes and weights', imgg: 'assets/Icons/Size.png'),
              SizedBox(height: 8),
              smallContainer(Txt: 'Favourites', imgg: 'assets/Icons/fav.png'),
              SizedBox(height: 8),
              smallContainer(Txt: 'Pets', imgg: 'assets/Icons/pets.png'),
              SizedBox(height: 8),
              smallContainer(Txt: 'Dates and Events', imgg: 'assets/Icons/dates.png'),
              SizedBox(height: 8),
              smallContainer(Txt: 'Family', imgg: 'assets/Icons/Family.png'),
            ]),
      ),
    );
  }
}
//---------------------------
class smallContainer extends StatelessWidget {
  final String Txt;
  final String imgg;

  const smallContainer({super.key, required this.Txt, required this.imgg,});

  @override
  Widget build(BuildContext context) {
    return  Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(imgg,height: 42),
        SizedBox(width: 8),
        Text(Txt,style: robo_400_14_b_29),
        Spacer(),
        Center(child: Image.asset('assets/images/direction-right 01.png',height: 24,alignment: Alignment.center,))
      ],
    );
  }
}
