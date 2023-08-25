import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../widgets/Appbar.dart';

class Family extends StatefulWidget {
  const Family({super.key});

  @override
  State<Family> createState() => _FamilyState();
}

class _FamilyState extends State<Family> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(bar: 'Family'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(children: [
              Image.asset('assets/images/cat.png'),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Jan Lavinson',style: inter_500_14,),
                  Text('Wife',style: inter_400_14_94),
                ],)
            ],)
          ],),
      ),
    );
  }
}
