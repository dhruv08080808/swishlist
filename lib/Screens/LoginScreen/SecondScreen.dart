import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:swishlist_ui/API/signup/signup_phone.dart';
import 'package:swishlist_ui/Screens/LoginScreen/OtpScreen.dart';

import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';
import '../../widgets/Appbar.dart';
import '../../widgets/buttons.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}
class _SecondScreenState extends State<SecondScreen> {
  final GlobalKey<FormState> _formkey=GlobalKey<FormState>();
  String? result;
  TextEditingController Phonec= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(bar: 'Create new account'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
            children: [
          SizedBox(height: 58),
          Center(child: Text('Enter your phone number',style: ubun_700_24_29)),
          SizedBox(height: 12),
          Text('SwishList will need to verify your phone number.',style: robo_400_14_70),
          SizedBox(height: 60),

          Container(
            height: 52,
            width: double.infinity,
           decoration: BoxDecoration(
             color: kEDEDF1,
               borderRadius: BorderRadius.circular(8)
           ),
            child: TextFormField(
              controller: Phonec,
                validator: (val){
                       },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText:'Phone Number',
                hintStyle:robo_400_14_70,
                contentPadding: EdgeInsets.symmetric(horizontal: 15)
              ),


              keyboardType:  TextInputType.number,),
            ),
         SizedBox(height: 202),
         Row(
           children: [
             Expanded(
               child: Radio(
                 value: "",
                 groupValue: result,
                 onChanged: (value){
                   setState(() {
                     result = value.toString();
                   });}),
             ),
         Expanded(
           flex: 8,
           child: Row(
               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       children: [
                         Text('I have read and agree to SwishList ',style:robo_400_14_b_29),
                         Text('Terms of',style:robo_500_14_29),
                       ],
                     ),
                     Text('services and Privacy Policy  ',style:robo_500_14_29),
                   ],
                 )]),
         ),
           ],
         ),

          SizedBox(height: 20),
          MainButton(height:52 ,width:double.infinity ,title:'Next' ,txtstyle:Phonec.text.isEmpty?
          robo_500_14_7A:robo_500_14_29 , color:
          Phonec.text.isEmpty ?
              kFCF5B6 : kF7E641 , onTap:() {
            signupphone(number: Phonec.text).then((value) {
              if(value['status']==true) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      OtpScreen(email: '', password: '',)),
                );
                Fluttertoast.showToast(
                    msg: 'your opt is ${value['data']['otp']}');
              } else{
                return Fluttertoast.showToast(msg: value['message']);
              }
            });
           
          } )
        ]),
      ),
    );
  }
}
