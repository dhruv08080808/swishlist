import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constants/textstyle.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String bar;
 CustomAppBar({super.key, required this.bar});
  @override
  Size get preferredSize => Size.fromHeight(52);
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Row(
            children: [
          GestureDetector(
              onTap: (){
                  Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(Icons.arrow_back,size: 24,),
              )
          ),
          Align(child: Text(bar,style: robo_500_16_29),
            alignment: Alignment.center,
          ),
        ]),
      ),
    );
  }




}
