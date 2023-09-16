import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:swishlist_ui/Screens/LoginScreen/ResetPass.dart';
import 'package:swishlist_ui/Screens/LoginScreen/ResetPassEmail.dart';
import 'package:swishlist_ui/widgets/textfield.dart';

import '../../API/signin/sign_in_api.dart';
import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';
import '../../Models/login_model.dart';
import '../../constant/sharedprefrences/sharedprefrences.dart';
import '../../widgets/Appbar.dart';
import '../../widgets/ContainerWithTextField.dart';
import '../../widgets/buttons.dart';
import '../../widgets/outlinebutton.dart';
import '../ButtomNavScreen/ButtomNavScreen.dart';
import 'CreateAcc.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});
  @override
  State<Signin> createState() => _SigninState();
}
class _SigninState extends State<Signin> {
  LoginResponse? response;
  TextEditingController Phonec=TextEditingController();
  TextEditingController passc=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(bar: 'Login'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
            SizedBox(height: 56),
            Center(child: Text('Welcome Back Buddy! ',style: ubun_700_24_29,)),
            SizedBox(height: 92),
                // TextFieldd(height: 52, contoller: Phonec, title: '', txtstyle: robo_400_14_70, onTap: (){}, color: kEDEDF1,hinttext: 'Enter phone number/email',),
                // SizedBox(height: 12),
                // TextFieldd(height: 52, contoller: passc, title: '',
                //      txtstyle: robo_400_14_70, onTap: (){}, color: kEDEDF1,hinttext: 'Password',),
                Cwithtext(color:kEDEDF1 , txtform: TextFormField(
                  controller: Phonec,
                  onChanged: (val){
                    setState(() {
                    });
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter phone number/email',
                      hintStyle: robo_400_14_70,
                      contentPadding: EdgeInsets.symmetric(horizontal: 15)
                  ),
                ),),
                SizedBox(height: 12),
                Cwithtext(color:kEDEDF1 , txtform: TextFormField(
                  controller: passc,

                  onChanged: (val){
                    setState(() {

                    });
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: robo_400_14_70,
                      contentPadding: EdgeInsets.symmetric(horizontal: 15)
                  ),
                ),),
                SizedBox(height: 16),
                MainButton(height:52 ,width:double.infinity ,title:'Next' ,txtstyle:
                Phonec.text.isEmpty || passc.text.isEmpty?
                robo_500_14_7A: robo_500_14_29 , color:
                Phonec.text.isEmpty || passc.text.isEmpty?
                kFCF5B6 :kF7E641 , onTap:() {
                  getsigninapi(email: Phonec.text , password:passc.text ).then((value){
                    response=value;
                    if(response?.status != null &&
                        response!.status==true){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ButtomNavScreen()),
                      );
                      print(response);
                      SharedPrefs().setLoginToken(response!.token);
                      SharedPrefs().setNameToken(response!.data.name);
                      SharedPrefs().setemail(response!.data.email);
                    SharedPrefs().setUserName(response!.data.username);
                      SharedPrefs().setphoto(response!.data.photo);
                      print(response?.token);
                    }
                    else{
                      return Fluttertoast.showToast(msg: value['message']);
                    }
                  });

                } ),
                SizedBox(height: 20),
                Center(child: Text('Or continue with',style: robo_400_12_70)),
                SizedBox(height: 12),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  outlinebutton(height: 48, width: 104, imagesourse: 'assets/Icons/Gmail.png', title: 'Email', colorr: kA3A3A3),
                  SizedBox(width: 8),
                  outlinebutton(height:48 , width:104 , imagesourse: 'assets/Icons/facebook.png', colorr:kA3A3A3,title: ''),
                  SizedBox(width: 8),
                  outlinebutton(height:48 , width:104 , imagesourse: 'assets/Icons/google.png', colorr:kA3A3A3,title: ''),
                ]),
                SizedBox(height: 48),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/Icons/leftarrow.png'),
                        SizedBox(width: 2),
                        GestureDetector(child: Text('Create a new account',style: robo_500_14_00),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAcc()),
                            );
                          },
                        ),
                      ],
                    ),


                    GestureDetector(child: Text('Forgot Password?',style: robo_500_14_00),
                      onTap: (){
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 259,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                   SizedBox(height: 32),
                                      Text('Reset password via...',style: Ubun_500_20_29,
                                        textAlign: TextAlign.start
                                      ),
                                      SizedBox(height: 8),
                                      Text('Select reset method',style: robo_400_14_70,),
                                      SizedBox(height: 28),
                                    GestureDetector(
                                      child: Container(
                                          height:52,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: kA3A3A3,
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(8)
                                          ),
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                SizedBox(width: 4),
                                                Text('Phone')
                                              ])),
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Resetpass()),
                                        );
                                      },
                                    ),
                                      SizedBox(height: 12),
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Resetpassemail()),
                                          );
                                        },
                                        child: Container(
                                            height:52,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: kA3A3A3,
                                                  width: 2,
                                                ),
                                                borderRadius: BorderRadius.circular(8)
                                            ),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(width: 4),
                                                  Text('Email')
                                                ])),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },

                    ),
                  ])]),
        )),
    );
  }
}
