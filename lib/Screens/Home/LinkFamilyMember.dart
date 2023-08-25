import 'package:flutter/material.dart';
import 'package:swishlist_ui/Screens/Home/RequestSend.dart';

import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';
import '../../widgets/Appbar.dart';
import '../../widgets/buttons.dart';
import '../../widgets/textfield.dart';

class LinkFamilyMember extends StatefulWidget {
  const LinkFamilyMember({super.key});

  @override
  State<LinkFamilyMember> createState() => _LinkFamilyMemberState();
}
class _LinkFamilyMemberState extends State<LinkFamilyMember> {
  String selectedCategory = 'Select relationship';
  TextEditingController emailcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:  CustomAppBar(bar: 'Link member’s account'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 28),
        child: Column(children: [
          Text('Link a family members account',style: ubun_700_24_29,textAlign: TextAlign.center,),
          SizedBox(height: 16),
          Text('Please enter the phone number or email they \n created their SwishList account with.',style: robo_400_12_70,textAlign: TextAlign.center),
          SizedBox(height: 48),
          TextFieldd(height: 52, contoller: emailcontroller, title: '',
            txtstyle: robo_400_14_70, onTap: (){}, color: kEDEDF1,hinttext: 'Enter phone number or email',),
          SizedBox(height: 12),
          Container(
              height: 52,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: kEDEDF1,
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButton<String>(
                  items: <String>[
                    'Wife',
                    'Children',
                    'Brother',
                    'Sister'
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  hint: Text(selectedCategory.isEmpty
                      ? 'Category Food'
                      : selectedCategory),
                  borderRadius: BorderRadius.circular(10),
                  underline: SizedBox(),
                  isExpanded: true,
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        selectedCategory = value;
                      });
                    }})
          ),
Spacer(),
          MainButton(height: 52,width: 328,title: 'Send request',txtstyle:
          emailcontroller.text.isEmpty || selectedCategory.isEmpty?
          robo_500_14_7A:robo_500_14_29,color:
          emailcontroller.text.isEmpty || selectedCategory.isEmpty?
          kFCF5B6:kF7E641 , onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RequestSend()),
            );
          })
        ],),
      ),
    );
  }
}
