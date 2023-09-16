import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';

class OnlySelectedFriends extends StatefulWidget {
  const OnlySelectedFriends({super.key});

  @override
  State<OnlySelectedFriends> createState() => _OnlySelectedFriendsState();
}

class _OnlySelectedFriendsState extends State<OnlySelectedFriends> {
  bool _accepted= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Only selected friends...',style:robo_500_16_33,),
          Text('1 Selected',style: robo_400_12_00,)
        ])),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            SizedBox(height: 1),
            Container(
              height: 52,
              decoration:  BoxDecoration(
                  border: Border.all(color: kEDEDF1),borderRadius: BorderRadius.circular(8),
                  color: kEDEDF1
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                child: Row(children: [
                  Image.asset('assets/Icons/searchicon.png',height: 19),
                  SizedBox(width: 12),
                  Text('Search',style: robo_400_14_70),
                  SizedBox(height: 16),

                ],),
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              height: 580,
              width: double.infinity,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context,i){
                    return Container(
                      height: 40,
                      width: double.infinity,
                      child: Row(children: [
                        Image.asset('assets/images/friend 2 circle.png'),
                        SizedBox(width: 8),
                        Text('Jan Levinson',style: robo_400_14_1F),
                        Spacer(),
                        // Container(
                        //   height: 36,
                        //   width: 70,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(8),
                        //     color: KF7E641,
                        //   ),
                        //   child: Center(child: Text('Send',style: inter_500_12_27,)),
                        // )
                        Checkbox(
                          checkColor: Colors.white,
                          activeColor: Colors.green,
                          shape: CircleBorder(),
                          side:
                          BorderSide(width: 2, color: Colors.green),
                          value: _accepted,
                          onChanged: ( value) {
                            setState(() {
                              _accepted = value!;
                            });
                          },
                        ),
                      ],),
                    );

                  }, separatorBuilder: (context,i){
                return SizedBox(height: 16,);
              }, itemCount: 8),
            )
          ],),
        ),
      ),

    );
  }
}
