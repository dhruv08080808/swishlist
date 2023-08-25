import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../widgets/Appbar.dart';

class MyPets extends StatefulWidget {
  const MyPets({super.key});

  @override
  State<MyPets> createState() => _MyPetsState();
}

class _MyPetsState extends State<MyPets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(bar: 'My Pets'),
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
             Text('Stevie',style: inter_500_14,),
             Row(


               children: [
                 Text('Cat',style: inter_400_14_94),
                 SizedBox(width: 8),
                Image.asset('assets/images/dot.png'),
                 SizedBox(width: 8),
                 Text('Persian',style: inter_400_14_94),
               ],
             ),
           ],)
         ],)
        ],),
      ),
    );
  }
}
