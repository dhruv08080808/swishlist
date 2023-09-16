import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../Constants/colors.dart';

class WaistDialog extends StatefulWidget {
  final Function(String) onPop;
  const WaistDialog({Key? key, required this.onPop}) : super(key: key);

  @override
  State<WaistDialog> createState() => _WaistDialogState();
}

class _WaistDialogState extends State<WaistDialog> {
  int selectedSize = 0;
  List tags = [
    '20',
    '22',
    '24',
    '26',
    '28',
    '30',
    '32',
    '34',
    '36',
    '38',
    '40',
    '44'
  ];
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      backgroundColor: Colors.white,
      contentPadding: EdgeInsets.zero,
      content: Container(
        padding: EdgeInsets.all(20),
        width: 1,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Waist Size',
                style: robo_500_14_29,
              ),
              SizedBox(height: 10),
              GridView.builder(
                itemCount: tags.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.5,
                ),
                itemBuilder: (_, i) {
                  return GestureDetector(
                    onTap: () {
                      // tagsList.add(tags[i]);
                      // print(tags[i]);
                      setState(() {
                        selectedSize = i;
                      });
                      widget.onPop(tags[i]);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: selectedSize == i
                              ? kF7E641.withOpacity(0.16)
                              : kEFEFEF,
                          border: Border.all(
                            color: selectedSize == i
                                ? kF7E641
                                : Colors.transparent,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Center(
                        child: Text(
                          tags[i],
                          style: robo_400_14_b_29,
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.pop(context);
              //     Navigator.push
              //       context,
              //       MaterialPageRoute(
              //         builder: (_) => Privacy(),
              //       ),
              //     );
              //   },
              //   child: Container(
              //     color: Colors.transparent,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.end,
              //       children: [
              //         Text(
              //           "Visible to",
              //           style: AppTextStyle().textColor70707014w400,
              //         ),
              //         SizedBox(
              //           width: 5.w,
              //         ),
              //         Image.asset("assets/images/image46.png"),
              //         SizedBox(
              //           width: 5.w,
              //         ),
              //         Text(
              //           'Everyone',
              //           style: AppTextStyle().textColor29292914w400,
              //         ),
              //         SizedBox(
              //           width: 10.w,
              //         ),
              //         Image.asset("assets/images/Vector176.png")
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}