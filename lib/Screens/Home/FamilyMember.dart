import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';
import '../../widgets/Appbar.dart';
class FamilyMember extends StatefulWidget {
  const FamilyMember({super.key});

  @override
  State<FamilyMember> createState() => _FamilyMemberState();
}

class _FamilyMemberState extends State<FamilyMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        leading: Icon(Icons.arrow_back_outlined),
        title: Text('Manage family members',style: robo_500_16_29),
    actions: [
      Image.asset('assets/Icons/Plus.png',height: 40)
      ],
    ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 20),
            Text('Linked',style: robo_400_12_70),
            SizedBox(height: 12),
            family(img: 'assets/Icons/aunty.png', nameee: 'Jan Levinson', status: 'Wife', surname: 'JanLovey22'),
SizedBox(height: 32),
            Text('Manged by me',style: robo_400_12_70),
            SizedBox(height: 12),
            family(img: 'assets/Icons/aunty.png', nameee: 'Jan Levinson', status: 'Wife', surname: 'JanLovey22'),
            SizedBox(height: 16),
            family(img: 'assets/Icons/uncle.png', nameee: 'Dwight Schrute', status: 'Brother', surname: 'Dwight372882'),
            SizedBox(height: 32),
            Text('Requested',style: robo_400_12_70),
            SizedBox(height: 12),
        Container(
          height:44,
          width: 328,
          child: Row(
            children: [
              Image.asset('assets/Icons/ryann.png'),
              SizedBox(width: 8),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ryan Howard',style: robo_400_14_1F),
                    SizedBox(width: 8),
                    Text('Ryan372882',style: robo_400_14_1F),
                  ]),
              Spacer(),
           Text('Cancel Request',style: robo_500_14_C9,)
            ],
          ),
        )

        ],),
      ),

    );
  }
}
//------------------------------------------------------
class family extends StatelessWidget {
  final String img;
  final String nameee;
  final String status;
  final String surname;
  const family({super.key, required this.img, required this.nameee, required this.status, required this.surname});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:44,
      width: 328,
      child: Row(
     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(img),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Row(
              children: [
                Text(nameee,style: robo_400_14_1F),
              SizedBox(width: 8),
              Container(
                width: 40,
                height:22,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:kF6E3DB
                ),
                child: Center(child: Text(status,style: robo_400_12_29,)),
              )
              ],
            ),
            Text(surname,style: robo_400_14_1F),
          ]),
          Spacer(),
          Image.asset('assets/Icons/opitionicon.png',)
        ],
      ),
    );
  }
}
