import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';
import '../../widgets/Appbar.dart';
class noti extends StatefulWidget {
  const noti({super.key});

  @override
  State<noti> createState() => _notiState();
}
class _notiState extends State<noti> {
  bool _switchValue = true;
  bool _switchValue1 = true;
  bool _switchValue2 = true;
  bool _switchValue3 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(bar: 'Notifications',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          SizedBox(height: 16),
              Container(
            child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Text('Follow requests',style: robo_400_14_00),
            CupertinoSwitch(
              activeColor: kF7E641,
              thumbColor: k9F9F9F,
              value: _switchValue,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
        ],
    ),
          ),
              SizedBox(height: 12),
              Container(

                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shared with me',style: robo_400_14_00),
                    Spacer(),
                    CupertinoSwitch(

                      activeColor: kF7E641,
                      thumbColor: k9F9F9F,
                      value: _switchValue1,
                      onChanged: (value) {
                        setState(() {
                          _switchValue1 = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),   Container(

                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Friends add prodcuts',style: robo_400_14_00),
                    CupertinoSwitch(
                      activeColor: kF7E641,
                      thumbColor: k9F9F9F,
                      value: _switchValue2,
                      onChanged: (value) {
                        setState(() {
                          _switchValue2 = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              Container(

                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('App update',style: robo_400_14_00),
                    CupertinoSwitch(
                      activeColor: kF7E641,
                      thumbColor: k9F9F9F,
                      value: _switchValue3,
                      onChanged: (value) {
                        setState(() {
                          _switchValue3 = value;
                        });
                      }
                    )
                  ]
                )
              )
        ])
      ),
    );
  }
}



