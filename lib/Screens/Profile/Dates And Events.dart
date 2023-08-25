import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';
class Datesande extends StatefulWidget {
  const Datesande({super.key});
  @override
  State<Datesande> createState() => _DatesandeState();
}
class _DatesandeState extends State<Datesande> {
  DateTime date = DateTime(2016, 10, 26);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Dates and Events',style: robo_500_16_29),
          Text('60% Completed',style: robo_400_12_70),
        ],
      ),

      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            backgroundColor: kBA54DE,
            valueColor: AlwaysStoppedAnimation(kBA54DE),
            minHeight: 8,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Upcoming',style: robo_600_14_29),
                SizedBox(height: 4),
                usersetting(profileeee: 'Trip to America', status: '${date.month}-${date.day}-${date.year}', imggg: 'assets/Icons/icon1.png', ontap: () { 
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) =>
                        AlertDialog(
                          insetPadding: EdgeInsets.zero,
                      contentPadding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 0,

                      content:  Container(
                        height:
                        200,
                        child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: DateTime(1969, 1, 1),
                        onDateTimeChanged: (DateTime newDateTime) {
                          setState(()=> date=newDateTime
                          );
                        },
                    ),
                      ),)


                ); },),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Text('+ Add more',style: robo_500_14_KBA5),
                    Image.asset('assets/images/right aroow.png')

                  ]),
                ),
                SizedBox(height: 24),
                Text('All',style: robo_600_14_29),
                SizedBox(height: 4),
                usersetting(profileeee: 'Birthday', status: '12 July, 1988', imggg: 'assets/Icons/icon1.png', ontap: () {  },),
                usersetting(profileeee: 'First Job', status: '', imggg: 'assets/Icons/icon i pink.png', ontap: () {  },),
                usersetting(profileeee: 'Annivrsary', status: '', imggg: 'assets/Icons/icon i pink.png', ontap: () {  },),
                usersetting(profileeee: 'Birthday', status: '', imggg: 'assets/Icons/icon i pink.png', ontap: () {  },),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('+ Add more',style: robo_500_14_KBA5),
                        Image.asset('assets/images/right aroow.png')
                      ]),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
//---------------stless
class usersetting extends StatelessWidget {
  final String profileeee;
  final String status;
  final String imggg;
  final Function() ontap;
  const usersetting({super.key, required this.profileeee, required this.status, required this.imggg, required this.ontap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: GestureDetector(
        onTap: ontap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(profileeee,style: robo_400_14_70),
            Row(children: [
              Text(status,style: robo_400_14_b_29),
              SizedBox(width: 4),
              Image.asset(imggg),
              SizedBox(width: 4),
              Image.asset('assets/images/right aroow.png')
            ],)
          ],
        ),
      ),
    );
  }
}
