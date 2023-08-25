import 'package:flutter/material.dart';
import 'package:swishlist_ui/Screens/Home/SearchProduct.dart';

import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';

class NameDialog extends StatefulWidget {
  final String name;

  final Widget child;
  const NameDialog({super.key, required this.name, required this.child});

  @override
  State<NameDialog> createState() => _NameDialogState();
}
class _NameDialogState extends State<NameDialog> {
  TextEditingController nameC=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title:  Text(widget.name,style: robo_500_14_29,),
      insetPadding: EdgeInsets.all(10),
      content: SingleChildScrollView(
        child: Column(children: [
          Container(
              height: 48,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kFEFCF6,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: kF7E641)
              ),
              child:widget.child
          ),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Visible to',style: robo_400_14_70),
              SizedBox(width: 4),
              Image.asset('assets/Icons/world icon.png'),
              SizedBox(width: 4),
              Text('Everyone'),
              SizedBox(width: 4),
              Image.asset('assets/Icons/direaction right.png'),
            ],)
        ],),
      ),
    );
  }
}
