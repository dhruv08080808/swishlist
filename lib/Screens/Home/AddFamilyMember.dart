
import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';
import 'package:swishlist_ui/Screens/Home/LinkFamilyMember.dart';

import '../../Constants/colors.dart';
import '../../widgets/Appbar.dart';

class AddFamilyMember extends StatefulWidget {
  const AddFamilyMember({super.key});

  @override
  State<AddFamilyMember> createState() => _AddFamilyMemberState();
}

class _AddFamilyMemberState extends State<AddFamilyMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
resizeToAvoidBottomInset: false,

      appBar:  CustomAppBar(bar: 'Add family member'),
      body: Padding(

        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 28),
        child: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
Text('Does the person have a SwishList account ?',style: ubun_700_24_29,textAlign: TextAlign.center),
              SizedBox(height: 16),
              Image.asset('assets/images/Family.png'),
              SizedBox(height: 16),
              Center(child: Text('Link family members with an existing SwishList \n account or invite them to join. You can also create \n  and manage child profiles.',style: robo_400_12_70,textAlign: TextAlign.center,)),
              Spacer(),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LinkFamilyMember()),
                  );
                },
                child: Container(
                  height: 52,

                 decoration: BoxDecoration(
                   color: KF7E641,
                   borderRadius:BorderRadius.circular(8),
                 ),
                   child: Center(child: Text('Yes',style: robo_500_14_29,)),

                ),
              ),
              SizedBox(height: 12),
              Container(
                height: 52,

                decoration: BoxDecoration(

                  borderRadius:BorderRadius.circular(8),
                  border: Border.all(color: kA3A3A3)
                ),
                child: Center(child: Text('No, invite them to SwishList',style: robo_500_14_29,)),
              ),
          ],),
        ),
      ),


    );
  }
}
