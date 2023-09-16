
import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/colors.dart';
import 'package:swishlist_ui/Screens/Home/SearchProduct.dart';
import 'package:swishlist_ui/widgets/outlinebutton.dart';

import '../../Constants/textstyle.dart';

import '../ETSY/EtsyProduct.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  TextEditingController searchc=TextEditingController();
  TextEditingController searcchhh=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
         Stack(
             children: [
          Container(
            height:362,
            width: double.infinity,
        child: Column(children: [
          Spacer(),
          Center(child: Text('Search & add',style: ubun_700_24_29,)),
          SizedBox(height: 8),
          Center(child: Text('Find your friends, or search products from your \n favourite shopping sites.',style: robo_400_12_70,
          textAlign: TextAlign.center,
          ),
          ),
         SizedBox(height: 28),
          Container(
            height: 52,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kEDEDF1,
              borderRadius: BorderRadius.circular(8),
            ),
            child:TextFormField(
              controller: searcchhh,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/Icons/searchicon.png',
                      width: 19,
                      height: 19,
                    ),
                  ),
                  hintText:'Search product, username and more',
                  hintStyle:robo_400_14_70,
                  contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 10)
              ),
            ),
          ),
          SizedBox(height: 16),
          GestureDetector(
            onTap: (){
      showModalBottomSheet(context: context, builder: (BuildContext context)
      {
      return SizedBox(
      height: 200,
      child: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
      Text('GeeksforGeeks'),
      ],
      ),
      )
      );
      }
      );
      },
            child: Row(
              children: [
                Image.asset('assets/Icons/filter.png'),
                SizedBox(width: 8),
                Text('Stores',style: robo_500_14_29,)
              ],
            ),
          ),
        ],),
      ),

          Positioned(
          child: Image.asset('assets/Icons/search.png'),
          top:2,
          left:-1,
          ),
               Positioned(
                 child: Image.asset('assets/Icons/search2.png'),


              right:1,
            bottom: -10,


               ),
  ],
),
SizedBox(height: 28),
Text('Top Sites',style: robo_400_12_76),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SearchProduct()),
                  );},
                  child: Row(
                    children: [
                      outlinebutton(height: 44, width: 120, imagesourse: 'assets/Icons/Amazon.png', title: 'Amazon', colorr: kA3A3A3),
                      SizedBox(width: 12),
                      GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => EtsyProduct()),
                            );
                          },
                          child: outlinebutton(height: 44, width: 120, imagesourse: 'assets/Icons/Etley.png', title: 'Etsy', colorr: kA3A3A3)),

                    ],
                  ),
                ),

          ]),
        ),
        // body:
        //
        // Stack(children: [
        //     Positioned(
        //             child: Image.asset('assets/Icons/search.png'),
        //              top: -60,
        //            right: 20,
        //              left: -140,
        //     ),
        //
        // ]),

      ),
    );
  }
}
