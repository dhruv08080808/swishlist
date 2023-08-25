import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController MessageC=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar:AppBar(title: Row(children: [
  Image.asset('assets/images/friend mess 1.png'),
  SizedBox(width: 8),
  Column(children: [
    Text('Pam',style: robo_500_16_39),
    Text('PamRox23',style:robo_400_13_96),
    
  ],)
]),
actions: [
  Image.asset('assets/Icons/3 dot in a line.png')
  ],
),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Spacer(),
         Center(child: Text('Today, 5:23 AM',style: robo_400_12_70)),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 108,
                  width: 143,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kC2C2C2
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset('assets/images/Chair.png'),
                ),
                SizedBox(height: 7),
                Text('RESPAWN 110 Racing Style Gaming Chair, Reclining  Ergonomic Chair with Footrest, in Green',style: robo_400_10_8F,)
              ],
            ),

          ),
SizedBox(height: 16),

            Row(children: [
              Align(
                alignment: Alignment.topLeft,

                  child: Image.asset('assets/images/friend mess 1.png',height: 28,width: 28,alignment: Alignment.topLeft)),
              SizedBox(width: 12),
              Container(
                height: 58,
                width: 231,
                decoration: BoxDecoration(
                  color: kECEDF0,
            borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 8, 5, 8),
                  child: Text('Send me this ASAP. You haven’t gifted me yet',style: robo_400_14_2C,),
                )),
              ),
            ],),
            SizedBox(height: 12),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 37,
                width: 182,
                decoration: BoxDecoration(
                  color: k343434,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                  child: Text('Sure, why not, lemme see',style: robo_400_14_FF,),
                ),
              ),
            ),
            SizedBox(height: 24),
      Container(
          height: 52,
          width: double.infinity,
          decoration: BoxDecoration(
              color: kECEDF0,
              borderRadius: BorderRadius.circular(8)
          ),
          child:Center(
            child: TextFormField(
              controller: MessageC,

              decoration: InputDecoration(
                isDense: true,
                  border: InputBorder.none,
                  hintText:'Message',
                  hintStyle:robo_400_14_92,
                  contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),

                suffixIcon: Image.asset('assets/Icons/Bag Icon.png'),
              ),
            ),
          )
      )
        ],),
      ),
    );
  }
}
