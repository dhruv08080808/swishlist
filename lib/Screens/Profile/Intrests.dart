import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';
import '../../widgets/Appbar.dart';
import '../../widgets/buttons.dart';

class Intrests extends StatefulWidget {
  const Intrests({super.key});

  @override
  State<Intrests> createState() => _IntrestsState();
}
int status=0;
class _IntrestsState extends State<Intrests> {
  List imgg =[
    ' Cycling',
    'Reading',
    'Fishing',
    'Fishing',
    'Swimming',
    'Singing',
    'Trekking',
    'Coding',
    'Watches',
    'Movies',
    'Swimming',
    'Coding',
    'Designing',
    'Gardening',
    'Cooking',
    'Gadgets',
    'Video games',
    'Travelling',
    'Sports',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(bar: 'My Interests'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
Text('Select your intererests',style: ubun_700_24_29),
          SizedBox(height: 12),
          Text('Select up to 10 interests.',style: robo_400_12_8F),
            SizedBox(height: 24),
//             Expanded(
//               child: GridView.builder(
//                 shrinkWrap: true,
//                 padding: EdgeInsets.zero,
//                 itemCount:imgg.length ,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// childAspectRatio: 2.8,
//                   mainAxisSpacing:8,
//                     crossAxisSpacing: 8,
//                     crossAxisCount: 3),
//
//                 itemBuilder: (BuildContext context, int index) {
//                 return  Container(
//                   color: Colors.red,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//                     child: Row(
//                       children: [
//                         Expanded(child: Image.asset('assets/Icons/add.png')),
//                         Expanded(
//                           child: Text(imgg[index],
//                               style: robo_400_13_29,
//                               ),
//                         )
//                       ],
//                     ),
//                   ),
//                 );
//                 },
//                 ),
//             ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              direction: Axis.horizontal,
              children: imgg.map((i) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: kB6CEED)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7.5),
                    child:
                    Text('$i'),

                  ))).toList(),
            ),
            Spacer(),
            Center(
              child: MainButton(height: 52,width: double.infinity,title: 'Add',txtstyle: robo_500_14_7A,color: kFCF5B6 , onTap: () {
              }),
            )
           ],
        ),
      ),
    );
  }
}
