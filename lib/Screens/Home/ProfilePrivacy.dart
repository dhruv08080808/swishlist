
import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';
import '../../widgets/Appbar.dart';
class ProfilePrivacy extends StatefulWidget {
  const ProfilePrivacy({super.key});

  @override
  State<ProfilePrivacy> createState() => _ProfilePrivacyState();
}

class _ProfilePrivacyState extends State<ProfilePrivacy> {
  bool checkBoxValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(bar: 'Profile Privacy'),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
              child: Column(children: [
                Text('Who can see my profile',style: robo_400_12_70),
                SizedBox(height: 28),
                Checkbox(
                  shape: const CircleBorder(),
                  activeColor: kF7E641,
                  focusColor: kAFAFAF,
                  value: checkBoxValue,
                  onChanged: (bool? newValue) {
                    setState(() {
                      checkBoxValue = newValue!;
                    });
                  },
                ),


      ],),
            ),
    );
  }
}

