import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';
class Datesandevents extends StatefulWidget {
  const Datesandevents({super.key});
  @override
  State<Datesandevents> createState() => _DatesandeventsState();
}
class _DatesandeventsState extends State<Datesandevents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dates and Events',style: robo_500_16_29),
        leading: Icon(Icons.chevron_left),
      ),
      body: Column(
        children: [

          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Upcoming',style: robo_500_16_00),
                SizedBox(height: 4),
                usersetting(profileeee: 'Trip to America', status: '10 August, 2015', imggg: 'assets/images/icon copy.png'),
                SizedBox(height: 29),
                Text('All',style: robo_500_16_00),
                SizedBox(height: 4),
                usersetting(profileeee: 'Birthday', status: '12 July, 1988', imggg: 'assets/images/icon copy.png'),
                usersetting(profileeee: 'First Job', status: '12 July, 1988', imggg: 'assets/images/icon copy.png'),
                usersetting(profileeee: 'Annivrsary', status: '12 July, 1988', imggg: 'assets/images/icon copy.png'),
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
  const usersetting({super.key, required this.profileeee, required this.status, required this.imggg});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(profileeee,style: robo_400_14_70),
          Row(children: [
            Text(status,style: out_400_14),
            SizedBox(width: 4),
            Image.asset(imggg),


          ],)
        ],
      ),
    );
  }
}
