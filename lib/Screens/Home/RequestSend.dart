import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/colors.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';
import 'package:swishlist_ui/Screens/ButtomNavScreen/ButtomNavScreen.dart';
import 'package:swishlist_ui/Screens/Product/StatusOfProduct.dart';
import '../../widgets/buttons.dart';
class RequestSend extends StatefulWidget {
  var datafrompre;
   RequestSend({super.key,this.datafrompre});
  @override
  State<RequestSend> createState() => _RequestSendState();
}
class _RequestSendState extends State<RequestSend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         Container(
           height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 28),
        child: Column(children: [
          SizedBox(height: 28),
          Center(child: Image.asset('assets/Icons/tick.png')),
          Text('Request Sent',style: ubun_700_24_29,),
          SizedBox(height: 16),
          Text('Once this person accepts your request, you will \n  be notfied.',style: robo_400_12_70,textAlign: TextAlign.center,),
          SizedBox(height: 28),
          Container(
            height: 92,
         width: double.infinity,
            decoration: BoxDecoration(
                borderRadius:   BorderRadius.circular(12),
                border: Border.all(
                  color: kE0E0E0,
                )
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/Icons/aunty.png'),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Jan Lavinson',style: robo_500_14_29),
                      SizedBox(height: 8),
                      Text('Requested',style: robo_400_14_3EA555,)
                    ],
                  )
                ],),
            ),
          ),
          // Positioned(
          //     child: Image.asset('assets/images/vector3.png'),
          //     top: 170,
          //     right: 0,
          //     left: -120),
          Spacer(),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StatusOfProduct()),
              );
            },
            child: MainButton(height: 52,width: double.infinity,title: 'Done',txtstyle: robo_500_14_29,color: kF7E641 , onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ButtomNavScreen()),
              );
            }),
          ),
          ]),
      ),
      ),
          Positioned(
              child: Image.asset('assets/images/vector.png'),
              top: -150,
              right: -295,
              left: 0),
          Positioned(
              child: Image.asset('assets/images/vector2.png'),
              top: 17,
              right: -200,
              left: 125),
        ],
    )
           );

  }
}
