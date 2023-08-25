import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/colors.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../widgets/Appbar.dart';
import '../../widgets/buttons.dart';
import '../../widgets/textfield.dart';

class EnterProductDetails extends StatefulWidget {
  const EnterProductDetails({super.key});

  @override
  State<EnterProductDetails> createState() => _EnterProductDetailsState();
}

class _EnterProductDetailsState extends State<EnterProductDetails> {
  TextEditingController titlec = TextEditingController();
  TextEditingController pricec = TextEditingController();
  TextEditingController datec = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar:  CustomAppBar(bar: 'Add product'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Enter product details',style: ubun_700_24_29),
          SizedBox(height: 8),
          Text('Fill the details of product you own already.',style: robo_400_14_70),
            SizedBox(height: 28),
            Container(
              height: 246,
              decoration: BoxDecoration( border: Border.all(color: kA3A3A3),borderRadius: BorderRadius.circular(8)
              
              ),
              child: Center(
                child: Container(
                  height: 44,
                  width: 143,
                  decoration: BoxDecoration( border: Border.all(color: kA3A3A3),borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(children: [
                      Image.asset('assets/Icons/Image.png',height: 20,width: 20),
                      SizedBox(width: 8),
                      Text('Add image',style: robo_400_14_70,),
                    ],),
                  ),
                ),
              ),
            ),
SizedBox(height: 20),
            TextFieldd(height: 52, contoller: titlec, title: '', txtstyle: robo_400_14_70, onTap: () {  }, color: kEDEDF1, hinttext: 'Title of the product*',),
            SizedBox(height: 12),
        Container(
            height: 52,
            decoration: BoxDecoration(
                color: kEDEDF1,
                borderRadius: BorderRadius.circular(8)
            ),
            child:TextFormField(
              controller: pricec,
              decoration: InputDecoration(
                  prefixIcon: Image.asset('assets/Icons/money.png'),
                  border: InputBorder.none,
                  hintText:'Price',
                  hintStyle:robo_400_14_70,
                  contentPadding: EdgeInsets.symmetric(horizontal:12,vertical: 10),

              ),
            )
        ),
            SizedBox(height: 12),
            Container(
                height: 52,
                decoration: BoxDecoration(
                    color: kEDEDF1,
                    borderRadius: BorderRadius.circular(8)
                ),
                child:TextFormField(
                  controller: pricec,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:'Price',
                      hintStyle:robo_400_14_70,
                      contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                    suffixIcon: Image.asset('assets/Icons/calender.png',),
                  ),
                )
            ),
Spacer(),
            MainButton(height: 52, width: double.infinity, title: 'Add', txtstyle: robo_500_14_B5, onTap: () {  }, color: kFCF5B6),
        ],),
      ),
    );
  }
}
