import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pinput/pinput.dart';
import 'package:swishlist_ui/API/otp/otp_api.dart';
import 'package:swishlist_ui/Models/login_model.dart';
import 'package:swishlist_ui/Screens/LoginScreen/createnewaccount.dart';
import 'package:swishlist_ui/constant/sharedprefrences/sharedprefrences.dart';

import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';
import '../../widgets/Appbar.dart';
import '../../widgets/buttons.dart';
import 'Signin.dart';
class OtpScreen extends StatefulWidget {
  final String email;
  final String password;

  const OtpScreen({super.key, required this.email, required this.password,});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final pinController = TextEditingController();
  FocusNode focusNode = FocusNode();
  TextEditingController otpc=TextEditingController();
  LoginResponse? response;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(bar: 'OTP Verification'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            SizedBox(height: 48),
            Center(child: Text('Phone Verification',style: ubun_700_24_29,)),
            SizedBox(height: 12),
            Text(
              'Please enter the 4-digit verification code sent to +182912345334. The code is valid for 10 minutes.',style: robo_400_14_70,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 48),
            PinCodeFields(
              onChange:(val) {
                setState(() {
                });

              },
               controller:otpc ,
              length: 4,
              fieldBorderStyle: FieldBorderStyle.square,
              responsive: false,
              fieldHeight:60.0,
              fieldWidth: 60.0,
              borderWidth:1.0,
              activeBorderColor: Colors.pink,
              activeBackgroundColor: Colors.pink.shade100,
              borderRadius: BorderRadius.circular(10.0),
              keyboardType: TextInputType.number,
              autoHideKeyboard: false,
              fieldBackgroundColor: Colors.black12,
              borderColor: Colors.black38,
              textStyle: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
              onComplete: (output) {
                // Your logic with pin code
                print(output);
              },
            ),
            SizedBox(height: 262),
            MainButton(height:52 ,width:double.infinity ,title:'Submit' ,txtstyle: otpc.text.isEmpty?
            robo_500_14_7A:robo_500_14_29, color: otpc.text.isEmpty?
            kFCF5B6:kF7E641 , onTap:() {
              otpapi(otp: otpc.text, email: widget.email, pass: widget.password,).
              then((value) {
                response=value;

                if(
                response?.status != null &&
                 response!.status==true){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => createnewacc(email: widget.email,)),
                  );
                  print(response);
                  SharedPrefs().setLoginToken(response!.token);
                  print(response?.token);



                }else{
                  Fluttertoast.showToast(msg: value['message']);
                }

              });

            } ),
SizedBox(height: 12),
            Container(
              height: 52,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color:kA3A3A3
                )
              ),
              child: Center(child: Text('Resend OTP',style: robo_500_14,)),
            ),
            SizedBox(height: 16),
          ]),
        ),
      ),
    );
  }
}
