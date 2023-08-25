import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';
import '../../widgets/buttons.dart';

class NewProductAdded extends StatefulWidget {
  const NewProductAdded({super.key});

  @override
  State<NewProductAdded> createState() => _NewProductAddedState();
}

class _NewProductAddedState extends State<NewProductAdded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/design 2.png'),
alignment: Alignment.topCenter
          ),

        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(height: 88),
                Center(child: Image.asset('assets/images/green tick.png')),
                SizedBox(height: 12),
                Center(child: Text('New Product added',style: ubun_700_28_29)),
                SizedBox(height: 8),
                Center(child: Text('to products you want.',style: robo_400_14_b_29)),
                SizedBox(height: 40),
                Center(
                  child: Container(height:203,
                    width: 270,
                    decoration: BoxDecoration(
                            color: kFFFFFF,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: kFFFFFF),
                    ),
                    child: Image.asset('assets/images/chair 3x.png')
                    ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text('RESPAWN 110 Racing Style Gaming Chair, Reclining Ergonomic Chair with Footrest, in Green',style: robo_400_14_32,),
                ),
                SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text('\$12',style: robo_600_16_32,),
                ),
                  SizedBox(height: 41),
                  MainButton(height: 52, width: double.infinity, title: 'View', onTap: () {  }, txtstyle: robo_500_14_32, color: kF7E641),
                  SizedBox(height: 12),
                  Container(
                    height: 52,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                     border: Border.all(color: kA3A3A3)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 121,vertical: 15),
                      child: Row(
                        children: [
                          Image.asset('assets/Icons/plus icon.png'),
                          Text('Add more',style: robo_500_14_32),
                        ],
                      ),
                    ),
                  ),
              ],),
            ],
          ),
        ),
      ),
    );
  }
}
