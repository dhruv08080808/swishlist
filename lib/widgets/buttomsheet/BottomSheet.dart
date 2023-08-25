import 'package:flutter/material.dart';
import 'package:swishlist_ui/Screens/ButtomNavScreen/ButtomNavScreen.dart';

import '../../Constants/colors.dart';

class BottomSheett extends StatefulWidget {
  final String Status;
  final Function(String) onPop;
  const BottomSheett({super.key, required this.Status, required this.onPop});

  @override
  State<BottomSheett> createState() => _BottomSheettState();
}

class _BottomSheettState extends State<BottomSheett> {

  TextEditingController dd=TextEditingController();
  int indexx=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 80,
            width: double.infinity,
            color: kF7E641,
            child: Center(child: Text('Select Product Type')),

          ),
          SizedBox(height: 40),
          GestureDetector(
              onTap: (){
                setState(() {
                  indexx=0;
                  Navigator.of(context).pop();
                  widget.onPop("Have");

                });
              },
              child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: indexx==0?Colors.yellow:Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
                    child: Text('Have'),
                  ))),
          SizedBox(height: 40),
          GestureDetector(
            onTap: (){
              setState(() {
                indexx=1;
                Navigator.of(context).pop();
                widget.onPop(" Dont have");

              });
            },

            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: indexx==1?Colors.yellow:Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
                  child: Text(' Dont Have'),
                )),
          ),
          SizedBox(height: 40),
          GestureDetector(
            onTap: (){
              setState(() {
                indexx=2;
                Navigator.of(context).pop();
                widget.onPop("want");
              });
            },

            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: indexx==2?Colors.yellow:Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
                  child: Text('want'),
                )),
          ),
          SizedBox(height: 40),
        ],),
      ),
    );
  }

  @override
  void initState() {
    if (widget.Status == "have") {
      indexx = 0;
    } else if (widget.Status == "Dont Have") {
      indexx = 1;
    } else {
      indexx = 2;
    }
    super.initState();
  }
}
