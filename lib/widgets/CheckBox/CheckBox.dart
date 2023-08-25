import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';
import '../../Screens/Home/privacy.dart';

class CheckBoxWidget extends StatefulWidget {
  final String gender;
  final Function(String) onPop;
  const CheckBoxWidget({Key? key, required this.gender, required this.onPop})
      : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  int _gIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        insetPadding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        contentPadding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        content: Container(
          color: Colors.transparent,
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          width: 1,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gender',
                  style: robo_500_14_29
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _gIndex = 0;
                      Navigator.of(context).pop();
                      widget.onPop("male");
                    });
                  },
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _gIndex = 0;
                            Navigator.of(context).pop();
                            widget.onPop("male");
                          });
                        },
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: _gIndex == 0
                                ? kF7E641
                                : Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('male', style: robo_500_14_29)
                    ],
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _gIndex = 1;
                      Navigator.of(context).pop();
                      widget.onPop("female");
                    });
                  },
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _gIndex = 1;
                            Navigator.of(context).pop();
                            widget.onPop("female");
                          });
                        },
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: _gIndex == 1
                                ? kF7E641
                                : Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('female',
                          style: robo_500_14_29)
                    ],
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _gIndex = 2;
                      Navigator.of(context).pop();
                      widget.onPop("neutral");
                    });
                  },
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _gIndex = 2;
                            Navigator.of(context).pop();
                            widget.onPop("neutral");
                          });
                        },
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: _gIndex == 2
                                ? kF7E641
                                : Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('neutral',
                          style: robo_500_14_29)
                    ],
                  ),
                ),
                SizedBox(height: 20),

              ],
            ),
          ),
        ));
  }

  @override
  void initState() {
    if (widget.gender == "male") {
      _gIndex = 0;
    } else if (widget.gender == "female") {
      _gIndex = 1;
    } else {
      _gIndex = 2;
    }
    super.initState();
  }
}