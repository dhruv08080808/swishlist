import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';


import '../../Constants/colors.dart';
import 'ProductInfo.dart';

class EtsyProduct extends StatefulWidget {
  const EtsyProduct({super.key});
  @override
  State<EtsyProduct> createState() => _EtsyProductState();
}
class _EtsyProductState extends State<EtsyProduct> {
  TextEditingController searchcontroller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Etsy Product',style: robo_500_16_29)),
       body: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 16),
           child: Column(children: [
               Container(
               height: 56,
               decoration:
               BoxDecoration(color: kEDEDF1, borderRadius: BorderRadius.circular(8)),
               child: TextFormField(
                 controller:searchcontroller ,
                 decoration: InputDecoration(
                     border: InputBorder.none,
                     hintText: 'Enter Product and Tap Search Icon',
                     hintStyle: robo_400_14_70,
                     contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                   suffixIcon: Image(image: AssetImage('assets/Icons/Searchiconn.png')),
                 ),
               )),
             SizedBox(height: 18),
             GridView.count(
               primary: false,
               shrinkWrap: true,
               crossAxisCount: 2,
             childAspectRatio: 0.6,
              scrollDirection: Axis.vertical,
              crossAxisSpacing: 5,
                mainAxisSpacing: 5,
               physics:  NeverScrollableScrollPhysics(),
               padding: EdgeInsets.all(8),
              children: List.generate(choices.length, (index){
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: kF7E641),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Image.asset('assets/images/jhumka.jpg',height: 150,),
                      SizedBox(height: 8),
                      GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  ProductInfo()),
                            );
                          },
                          child: Text('AquaMarine and Moonstone Earings,.',style: robo_500_12_3F,)),
                      SizedBox(height: 8),
                      Text('\$6500')
                    ]),
                  ),
                );
              }

              )
              ),
           ],),
         ),
       ),
    );
  }
}
class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}
 List<Choice> choices =  <Choice>[
  const Choice(title: 'Home', icon: Icons.home),
  const Choice(title: 'Contact', icon: Icons.contacts),
  const Choice(title: 'Map', icon: Icons.map),
  const Choice(title: 'Phone', icon: Icons.phone),
  const Choice(title: 'Camera', icon: Icons.camera_alt),
  const Choice(title: 'Setting', icon: Icons.settings),
  const Choice(title: 'Album', icon: Icons.photo_album),
  const Choice(title: 'WiFi', icon: Icons.wifi),
];

// Column(
//
// crossAxisAlignment: CrossAxisAlignment.start,
//
// children: [
//
// Image.asset('assets/images/jhumka.jpg',height: 150,),
//
// SizedBox(height: 8),
//
// Text('AquaMarine and Moonstone Earings,.',style: robo_500_12_3F,),
//
// SizedBox(height: 8),
//
// Text('\$6500')
//
//
//
// ],),