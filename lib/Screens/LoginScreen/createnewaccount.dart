
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';
import '../../widgets/Appbar.dart';
import '../../widgets/buttons.dart';
import '../../widgets/textfield.dart';
import 'SecondScreen.dart';
class createnewacc extends StatefulWidget {
  const createnewacc({super.key});
  @override
  State<createnewacc> createState() => _createnewaccState();
}
class _createnewaccState extends State<createnewacc> {
  File pickedImage = File("");
  final ImagePicker picker = ImagePicker();
  TextEditingController namec= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(bar: 'Create new account'),
      body: Padding(
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
Image!=null?
              Image.file(
                File(pickedImage!.path),
              width: 100,
              height: 420,
              fit: BoxFit.cover,
            ) :

               Image.asset('assets/Icons/profilepic.png',height: 120),

              Positioned(child:
              GestureDetector(
                  onTap: ()async{
                    XFile? v = await picker.pickImage(
                        source: ImageSource.gallery);
                    if (v != null) {
                      setState(
                            () {
                          pickedImage = File(v.path);
                        },
                      );
                    }
                    print(pickedImage);
                  },
                  child: Image.asset('assets/Icons/imgicon.png')),
              right: 5,
                bottom: 2,
                height: 35,
              )
            ],
            ),
            SizedBox(height: 28),
            TextFieldd(height: 52, contoller: namec, title: '',
              txtstyle: robo_400_14_70, onTap: (){}, color: kEDEDF1,hinttext: 'Your full name',),
            SizedBox(height: 144),
            MainButton(height: 52,width: double.infinity,title: 'Create Account',txtstyle: robo_500_14,color: kF7E641 , onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );
            },
            ),
          ]),
        ),
      ),
    );
  }
}
