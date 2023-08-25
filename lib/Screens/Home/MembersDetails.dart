
import 'package:flutter/material.dart';
import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';
import '../../widgets/Appbar.dart';
import '../../widgets/buttons.dart';
import '../../widgets/textfield.dart';
import '../LoginScreen/SecondScreen.dart';
class MemberDetails extends StatefulWidget {
  const MemberDetails({super.key});
  @override
  State<MemberDetails> createState() => _MemberDetailsState();
}
class _MemberDetailsState extends State<MemberDetails> {
  String selectedCategory = 'Select relationship';
  TextEditingController namec = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(bar: 'Member’s details'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          SizedBox(height: 29),
          Text('Enter family member details',style: ubun_700_24_29,),
          SizedBox(height: 12),
          Text('Fill the following details so that you can start managing account for them.',style: robo_400_12_70,textAlign: TextAlign.center),
          SizedBox(height: 48),
          Stack(children: [
            Image.asset('assets/Icons/profilepic.png',height: 120),
            Positioned(child:
            Image.asset('assets/Icons/imgicon.png'),
              right: 5,
              bottom: 2,
              height: 35,
            )
          ],
          ),
          SizedBox(height: 28),
          TextFieldd(height: 52, contoller: namec, title: '',
            txtstyle: robo_400_14_70, onTap: (){}, color: kEDEDF1,hinttext: 'Enter Name',),
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
          SizedBox(height: 107),
          MainButton(height: 52,width: 328,title: 'Add',txtstyle: robo_500_14_7A,color: kFCF5B6 , onTap: () {
          })
        ]
        )
      )
    );;
  }
}
