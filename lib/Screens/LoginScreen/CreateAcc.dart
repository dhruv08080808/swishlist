
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:swishlist_ui/Screens/LoginScreen/OtpScreen.dart';
import 'package:swishlist_ui/Screens/LoginScreen/createnewaccount.dart';

import '../../API/signup/sign_up_api.dart';
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
  GlobalKey<FormState>_form=GlobalKey<FormState>();
  TextEditingController emailc= TextEditingController();
  TextEditingController passc= TextEditingController();
  TextEditingController phonec= TextEditingController();
  String?result;
  bool _obscureText = true;
  void _toggle(){
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(bar: 'Create new account',),
      body: Form(
        key: _form,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            SizedBox(height: 56),
            Center(child: Text('Enter your email ',style: ubun_700_24_29,)),
            SizedBox(height: 12),
Text('SwishList will need to verify your email',style: robo_400_14_70),
            SizedBox(height: 62),
            Container(
              height: 52,
              width: double.infinity,
              decoration:
              BoxDecoration(color: kEDEDF1, borderRadius: BorderRadius.circular(8)
              ),
              child: TextFormField(
                controller: emailc,
                validator: (email){
                  if(email!.isEmpty||email==null ){
                    return '';
                  }
                  if (!RegExp(
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(email!)){
                    return 'Please Enter a Valid Email';

                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                    hintStyle: robo_400_14_70,
                    contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 10)),
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 52,
              width: double.infinity,
              decoration:
              BoxDecoration(color: kEDEDF1, borderRadius: BorderRadius.circular(8)
              ),
              child: TextFormField(
                controller: passc,
                onChanged: (val){
                  setState(() {

                  });
                },
                obscureText: _obscureText,

                decoration: InputDecoration(
                  isDense: true,
                    border: InputBorder.none,
                    hintText: 'Password',
                    suffixIcon:

                    InkWell(
                        onTap: _toggle,
                        child:
                        _obscureText?
                        Image(image: AssetImage('assets/Icons/passhide.png'))
                    : Image(image: AssetImage('assets/Icons/hide pass.png')))
                    ,
                    hintStyle: robo_400_14_70,
                    contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 10)),
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return "Password is required";
                //   }
                //   // Perform custom password validation here
                //   if (value.length < 8) {
                //     return "Password must be at least 8 characters long";
                //   }
                //   if (!value.contains(RegExp(r'[A-Z]'))) {
                //     return "Password must contain at least one uppercase letter";
                //   }
                //   if (!value.contains(RegExp(r'[a-z]'))) {
                //     return "Password must contain at least one lowercase letter";
                //   }
                //   if (!value.contains(RegExp(r'[0-9]'))) {
                //     return "Password must contain at least one numeric character";
                //   }
                //   if (!value.contains(RegExp(r'[!@#\$%^&*()<>?/|}{~:]'))) {
                //     return "Password must contain at least one special character";
                //   }
                //
                //   return null; // Password is valid.
                // },
              ),
            ),


            SizedBox(height: 60),
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
            GestureDetector(child: MainButton(height:52 ,width:double.infinity ,title:'Next' ,txtstyle:
            emailc.text.isEmpty || passc.text.isEmpty?
            robo_500_14_7A : robo_500_14_29 , color:
            emailc.text.isEmpty || passc.text.isEmpty?
            kFCF5B6 : kF7E641 ,
                onTap:() {
             if(_form.currentState!.validate()){
               signupApi(
                   email: emailc.text).then((value) {
                 if(value['status'] == true) {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => OtpScreen(email: emailc.text, password: passc.text, )),
                   );
                   Fluttertoast.showToast(
                       msg:
                       'Your OTP is ${value['data']['otp']}');
                 } else {
                   return Fluttertoast.showToast(msg: value['message']);
                 }
               });
             }

            })),
          ]),
        ),
      ),
    );
  }
}
