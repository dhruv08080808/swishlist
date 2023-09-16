import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/colors.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

class Shoes extends StatefulWidget {
  final Function(String) onPop;
  const Shoes({super.key, required this.onPop});

  @override
  State<Shoes> createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  int SelectedSize=0;
  List Tags=[
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
  ];
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      backgroundColor: Colors.white,
      contentPadding: EdgeInsets.zero,
      content:Container(
        padding: EdgeInsets.all(20),
        width: 1,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Shirt Size',style: robo_500_14_29),
              SizedBox(height: 10),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: Tags.length,
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,crossAxisSpacing: 10,mainAxisSpacing: 10,childAspectRatio: 0.9

                  ), itemBuilder: (_,i){
                return GestureDetector(
                    onTap: (){
                      setState(() {
                        SelectedSize = i;
                      });
                      widget.onPop(Tags[i]);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: SelectedSize==i?kF7E641.withOpacity(0.16):kEFEFEF,
                        border: Border.all(
                          color: SelectedSize == i
                              ? kF7E641
                              : Colors.transparent,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8)
                        ),
                      ),
                      child: Center(
                        child: Text(
                          Tags[i],
                          style: robo_400_14_b_29,
                        ),
                      ),
                    )
                );

              })
            ],),
        ),
      ) ,
    );
  }
}
