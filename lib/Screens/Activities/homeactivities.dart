import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

class homeactivites extends StatefulWidget {
  const homeactivites({super.key});

  @override
  State<homeactivites> createState() => _homeactivitesState();
}

class _homeactivitesState extends State<homeactivites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Activities',style: ubun_700_24_29)),
      body: Column(children: [
SizedBox(height: 96),
        Center(child: Image.asset('assets/images/bell.png')),
        SizedBox(height: 24),
        Text('Share your profile and add friends \n & family to see their activities',style: robo_500_14_29)
      ],),
    );
  }
}
