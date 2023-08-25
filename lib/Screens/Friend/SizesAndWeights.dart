import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';
class sizesandweights extends StatefulWidget {
  const sizesandweights({super.key});
  @override
  State<sizesandweights> createState() => _sizesandweightsState();
}
class _sizesandweightsState extends State<sizesandweights> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sizes and weights',style: robo_500_16_29),
        leading: Icon(Icons.arrow_back_sharp),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Fashion',style: robo_600_14_29),
                SizedBox(height: 4),
                usersetting(profileeee: 'Waist', status: '32'),
                usersetting(profileeee: 'Shirt', status: '36',),
                usersetting(profileeee: 'Shoes', status: '9',),
                usersetting(profileeee: 'Shoes', status: '-',),
                SizedBox(height: 24),
                Text('Home',style: robo_600_14_29),
                SizedBox(height: 4),
                usersetting(profileeee: 'Bed', status: 'King'),
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

  const usersetting({super.key, required this.profileeee, required this.status});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(profileeee,style: robo_400_14_70),
          Text(status,style: robo_400_14_b_29),
        ],
      ),
    );
  }
}
