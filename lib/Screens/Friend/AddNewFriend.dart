import 'package:flutter/material.dart';

import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';
import '../../widgets/Appbar.dart';
import '../../widgets/textfield.dart';

class AddNewFriend extends StatefulWidget {

  const AddNewFriend({super.key});

  @override
  State<AddNewFriend> createState() => _AddNewFriendState();
}

class _AddNewFriendState extends State<AddNewFriend> {
  TextEditingController Search=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(bar: 'Add friend'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
            Container(
            height: 52,
            width: double.infinity,
            decoration: BoxDecoration(
                color: kEDEDF1,
                borderRadius: BorderRadius.circular(8),
                // image: DecorationImage(image: AssetImage('assets/Icons/Searchiconn.png'),
                //   alignment: Alignment.centerLeft,
                //
                // )
            ),
            child:TextFormField(
              controller: Search,
              decoration: InputDecoration(
                prefixIcon: Image.asset('assets/Icons/Searchiconn.png'),
                  border: InputBorder.none,
                  hintText:'Search name or username',
                  hintStyle:robo_400_14_70,
              ),
            ),

        ),
          SizedBox(height: 16),
        Container(
            height: 64,
            decoration: BoxDecoration(
              border: Border.all(color: kE0E0E0),borderRadius: BorderRadius.circular(8)
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                Image.asset('assets/Icons/download.png'),
                SizedBox(width: 8),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Sync Contacts',style: robo_500_14_00),
                      Text('Find people you know',style: robo_400_12_29),
                    ]),
                    Spacer(),
                    Container(
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: kF7E641,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.5,horizontal: 20),
                        child: Text('Sync',style: robo_500_13_2C,),
                      ),
                    )
                  ]),
            )
        ),
        ],),
      ),
    );
  }
}
