
import 'package:flutter/material.dart';
import 'package:swishlist_ui/Screens/LoginScreen/createnewaccount.dart';

import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';
import '../../widgets/Appbar.dart';
import '../../widgets/buttons.dart';
import '../../widgets/textfield.dart';
class CreateAcc extends StatefulWidget {
  const CreateAcc({super.key});

  @override
  State<CreateAcc> createState() => _CreateAccState();
}

class _CreateAccState extends State<CreateAcc> {
  TextEditingController emailc= TextEditingController();
  TextEditingController passc= TextEditingController();
  String?result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(bar: 'Create new account',),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          SizedBox(height: 56),
          Center(child: Text('Enter your email ',style: ubun_700_24_29,)),
          SizedBox(height: 12),
Text('SwishList will need to verify your email',style: robo_400_14_70),
          SizedBox(height: 62),
         TextFieldd(height: 52, contoller: emailc, title: '', txtstyle: robo_400_14_70, onTap: (){}, color: kEDEDF1,hinttext: 'Email'),
          SizedBox(height: 12),
          TextFieldd(height: 52, contoller: passc, title: '', txtstyle: robo_400_14_70, onTap: (){}, color: kEDEDF1,hinttext: 'Password'),
          SizedBox(height: 138),
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
          GestureDetector(child: MainButton(height:52 ,width:double.infinity ,title:'Next' ,txtstyle:robo_500_14_7A , color:
          emailc.text.isEmpty || passc.text.isEmpty?

          kFCF5B6 : kF7E641 , onTap:() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => createnewacc()),
            );
          })),
        ]),
      ),
    );
  }
}
