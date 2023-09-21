import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';
import 'package:swishlist_ui/Models/activities_model.dart';

import '../../API/activities/getactivities.dart';

class homeactivites extends StatefulWidget {
  const homeactivites({super.key});

  @override
  State<homeactivites> createState() => _homeactivitesState();
}

class _homeactivitesState extends State<homeactivites> {
  @override
  void initState() {
    getActivity();
    super.initState();
  }

  Activity1?act1;
  bool isLoading = false;
  getActivity(){
    isLoading= true;
    getactivities().then((value) {
      if(value.status){
        setState(() {
          act1=value;
          bool isLoading = false;
        });

      }else{
        isLoading = false;
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title:


      Text('Activities',style: ubun_700_24_29)),
      body:


      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
SizedBox(height: 96),
        Center(child: Image.asset('assets/images/bell.png')),
        SizedBox(height: 24),
        Text('Share your profile and add friends \n & family to see their activities',style: robo_500_14_29)
      ],),
    );
  }
}
