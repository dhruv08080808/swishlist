import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}
class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile',style: robo_500_16_29),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Text('Personal',style: robo_600_14_00),
            SizedBox(height: 16),
            usersetting(profileeee: 'Name', status: 'Harry Wilson', imggg: 'assets/images/icon copy.png', onTap: () {
            }),
            usersetting(profileeee: 'Gender', status: 'Male', imggg: 'assets/images/icon copy.png', onTap: () {
             }),
            usersetting(profileeee: 'Date of birth', status: '12 July, 1988', imggg: 'assets/images/icon copy.png', onTap: () {  },),
            usersetting(profileeee: 'Occupation', status: 'UI/UX Designer', imggg: 'assets/images/icon copy.png', onTap: () {  },),
          Container(
            height: 36,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Relationship Status',style: robo_400_14_84),
                Row(children: [
                  Text('-'),])])),
            SizedBox(height: 24),
            Text('Contact',style: robo_600_14_00),
            SizedBox(height: 4),
            usersetting(profileeee: 'Phone', status: '(832) 460-2975', imggg: 'assets/images/icon copy.png', onTap: () {  },),
            Container(
                height: 36,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Alternate Phone',style: robo_400_14_84),
                      Row(children: [
                        Text('-'),])])),
            usersetting(profileeee: 'Email', status: 'Harrywilson134@gmail.com', imggg: 'assets/images/icon copy.png', onTap: () {  },),
            SizedBox(height: 24),
            Text('Addresses',style: robo_600_14_00),
            SizedBox(height: 4),
            Text('Home',style: robo_400_14_A9),
            SizedBox(height: 2),
            Container(
              height: 36,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('2850 Rogerdale Rd, Houston, Texas,\nUnited States, 77042',style: robo_400_14_00),
                  Row(children: [
                    SizedBox(width: 4),
                    Image.asset('assets/images/direction-down 01.png')
                  ],)
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
                height: 36,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Work',style: robo_400_14_A9),
                      Row(children: [
                       ])])),
            Text('-'),
            SizedBox(height: 28),
            Text('Education',style: robo_600_14_00),
            usersetting(profileeee: 'College', status: '12 July, 1988', imggg: 'assets/images/icon copy.png', onTap: () {  },),
            usersetting(profileeee: 'School', status: 'UI/UX Designer', imggg: 'assets/images/icon copy.png', onTap: () {  },),
          ],
        ),
      ),
    );
  }
}
//---------------stless
class usersetting extends StatelessWidget {
  final String profileeee;
  final String status;
  final String imggg;
  final Function() onTap;
  const usersetting({super.key, required this.profileeee, required this.status, required this.imggg,  required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(profileeee,style: robo_400_14_70),
            Row(children: [
              Text(status,style: robo_400_14_b_29),
              SizedBox(width: 4),
              Image.asset(imggg),

            ],)
          ],
        ),
      ),
    );
  }
}
