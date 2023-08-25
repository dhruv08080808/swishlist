import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import 'MyFriendsExcept.dart';
import 'OnlySelectedFriends.dart';

class ProductPrivacy extends StatefulWidget {
  const ProductPrivacy({super.key});

  @override
  State<ProductPrivacy> createState() => _ProductPrivacyState();
}

class _ProductPrivacyState extends State<ProductPrivacy> {
  @override
  Widget build(BuildContext context) {
    bool checkBoxValue = false;
    return Scaffold(
      appBar: AppBar(title: Text('Product Privacy',style: robo_500_16_00,)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
Text('Who can see this product',style: ubun_700_24_33),
          SizedBox(height: 8),
          Text('Select who can see your product',style: robo_400_12_71,),
            SizedBox(height: 20),
Row(
  children: [
    Checkbox(
        value: checkBoxValue,
        shape: CircleBorder(),
        activeColor: Colors.green,
        onChanged: (bool? newValue) {
          setState(() {
            checkBoxValue = newValue!;
          });
        }),
    Text('Friends and family',style: robo_400_14_00,)
  ],
),
            Row(
              children: [
                Checkbox(
                    value: checkBoxValue,
                    activeColor: Colors.green,
                    shape: CircleBorder(),
                    onChanged: (bool? newValue) {
                      setState(() {
                        checkBoxValue = newValue!;
                      });
                    }),
                Text('Friends only',style: robo_400_14_00,)
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: checkBoxValue,
                    shape: CircleBorder(),
                    activeColor: Colors.green,
                    onChanged: (bool? newValue) {
                      setState(() {
                        checkBoxValue = newValue!;
                      });
                    }),
                Text('Family only',style: robo_400_14_00,)
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: checkBoxValue,
                    shape: CircleBorder(),
                    activeColor: Colors.green,
                    onChanged: (bool? newValue) {
                      setState(() {
                        checkBoxValue = newValue!;
                      });
                    }),
                Text('Only me',style: robo_400_14_00,)
              ],
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnlySelectedFriends()),
                );
              },
              child: Row(
                children: [
                  Checkbox(
                      value: checkBoxValue,
                      shape: CircleBorder(),
                      activeColor: Colors.green,
                      onChanged: (bool? newValue) {
                        setState(() {
                          checkBoxValue = newValue!;
                        });
                      }),
                  Text('Only selected friends',style: robo_400_14_00),
                  Spacer(),
                  Image.asset('assets/Icons/right arrow.png'),
                ],
              ),
            ),
            Row(
              children: [
                Checkbox(
                    value: checkBoxValue,
                    shape: CircleBorder(),
                    activeColor: Colors.green,
                    onChanged: (bool? newValue) {
                      setState(() {
                        checkBoxValue = newValue!;
                      });
                    }),
                GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyFriendsExcept()),
                      );
                    },
                    child: Text('My friends except...',style: robo_400_14_00)),
                Spacer(),
                Image.asset('assets/Icons/right arrow.png'),
              ],
            ),
        ]),
      ),

    );
  }
}
