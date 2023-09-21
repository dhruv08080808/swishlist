
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:swishlist_ui/API/updateprofile/update_profile.dart';

import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';
import '../../constant/sharedprefrences/sharedprefrences.dart';
import '../../widgets/Appbar.dart';
import '../../widgets/ContainerWithTextField.dart';
import '../../widgets/buttons.dart';
import '../../widgets/textfield.dart';
import 'SecondScreen.dart';
import 'Signin.dart';
class createnewacc extends StatefulWidget {
  final String email;
  const createnewacc({super.key, required this.email});
  @override
  State<createnewacc> createState() => _createnewaccState();
}
class _createnewaccState extends State<createnewacc> {

  GlobalKey<FormState>_form=GlobalKey<FormState>();
  File pickedImage = File("");
  final ImagePicker picker = ImagePicker();
  TextEditingController namec= TextEditingController();
  TextEditingController usercontroller= TextEditingController();

  TextEditingController phonecontroller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(bar: 'Create new account'),
      body: Form(
        key: _form,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 29),
              Text('Last step!',style: ubun_700_16_A8,),
              SizedBox(height: 9),
              Text('Add your photo and',style: ubun_700_24_29),
              Text('name',style: ubun_700_24_29),
              SizedBox(height: 36),
              Stack(
                children: [

                Container(
                  height: 80,
                  width: 100,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle

                  ),
                  child: Image.file(
                    File(pickedImage!.path),

                  fit: BoxFit.cover,
              ),
                ) ,



                Positioned(right: 5,
                  bottom: 2,
                  height: 35,child:
                GestureDetector(
                    onTap: ()async{
                      XFile? v = await picker.pickImage(
                          imageQuality: 50,
                          maxHeight: 500,
                          maxWidth: 500,
                          source: ImageSource.gallery);

                        setState(
                              () {
                            pickedImage = File(v!.path.toString());
                          },
                        );

                      print(pickedImage);
                    },
                    child: Image.asset('assets/Icons/imgicon.png')),
                )
              ],
              ),
              SizedBox(height: 28),
              Cwithtext(color:kEDEDF1 , txtform: TextFormField(
                controller: namec,

                onChanged: (val){
                  setState(() {

                  });
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                    hintText: 'Full Name',
                    hintStyle: robo_400_14_70,
                    contentPadding: EdgeInsets.symmetric(horizontal: 15)
                ),
              ),),
              SizedBox(height: 12),
              // TextFieldd(height: 52, contoller: usercontroller, title: '',
              //   txtstyle: robo_400_14_70, onTap: () {}, color: kEDEDF1,hinttext: 'UserName',),
              Cwithtext(color:kEDEDF1 , txtform: TextFormField(
                controller: usercontroller,
                onChanged: (val){
                  setState(() {
                  });
                },
                decoration: InputDecoration(
                    border: InputBorder.none,
                  hintText: 'UserName',
                  hintStyle: robo_400_14_70,
                  contentPadding: EdgeInsets.symmetric(horizontal: 15)
                ),
              ),),
              SizedBox(height: 12),
              Cwithtext(color:kEDEDF1 , txtform: TextFormField(
                controller: phonecontroller,
                keyboardType: TextInputType.number,
                validator: (phonee){
                  if(phonee!.isEmpty||phonee==null ){
                    return '';
                  }
                  if (!RegExp(
                      r'/^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/').hasMatch(phonee!)){
                    return 'Please Enter a Valid Email';

                  } else {
                    return null;
                  }
                },
                onChanged: (val){
                  setState(() {
                  });
                },
                decoration: InputDecoration(

                    border: InputBorder.none,
                    hintText: 'Phone',
                    hintStyle: robo_400_14_70,

                    contentPadding: EdgeInsets.symmetric(horizontal: 15)
                ),
              ),),
              SizedBox(height: 144),
              MainButton(height: 52,width: double.infinity,title: 'Create Account',txtstyle: namec.text.isEmpty?
              robo_500_14_7A:robo_500_14_29,color:
              namec.text.isEmpty?kFCF5B6:
              kF7E641 , onTap: () {
                print('jnkk${SharedPrefs().getLoginToken()}');
// if(_form.currentState!.validate()){}
                updateprofileapi1(fullname: namec.text, username: usercontroller.text, phone: phonecontroller.text, photoo:
                    pickedImage.isAbsolute?pickedImage.path:'', email: widget.email).then((value){
    if(value['status']==true){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Signin()),
        );

    }
    else{
        return Fluttertoast.showToast(msg: value['message']);
    }
                });

              },
              ),

            ]),
          ),
        ),
      ),
    );
  }
}
