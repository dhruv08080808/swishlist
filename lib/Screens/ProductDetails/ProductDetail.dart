import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/colors.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';
import 'package:swishlist_ui/Screens/ProductDetails/ListOfProducts.dart';

class ProductDetailss extends StatefulWidget {
  const ProductDetailss({super.key});

  @override
  State<ProductDetailss> createState() => _ProductDetailssState();
}

class _ProductDetailssState extends State<ProductDetailss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AndyAngie3260',style: robo_500_16_39,),
        actions: [
          Image.asset('assets/Icons/message .png'),
          Image.asset('assets/Icons/3 dot in a line.png'),
        ],
      ),
      body: ListView(children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: kA3A3A3),
                image: DecorationImage(image: AssetImage('assets/images/positioned.png', ),alignment: Alignment.centerLeft)
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Stack(
                children: [
                  Row(children: [
                    Image.asset('assets/images/friend 1 circle.png'),
                    SizedBox(width: 10),
                    Text('Andy Bernard',style: robo_500_16_29,),
                    Spacer(),
                    Text('Profile',style: robo_500_14_70),
                    Image.asset('assets/Icons/right arrow.png'),
                  ]),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/positioned2.png', ),alignment: Alignment.topLeft),
          ),
    child: Column(children: [
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text('Andy wants',style:Ubun_700_20,),
      Spacer(),
      GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  ListOfProducts()),
            );
          },
          child: Text('View all',style: robo_500_14_29)),
      SizedBox(height: 12),
    ]),
  ),
      SizedBox(
     height: 200,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,i){
          return Container(
            width: 173,
            height: 194,
            child:
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                Container(
                    width: 173,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: kE0E0E0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset('assets/images/only watch.png',height: 84,)),
                 SizedBox(height: 12),
                 Text('MorePro Fitness Tracker,Heart Rate Monitor Blood Pressure ...',style: robo_400_12_29),
                 SizedBox(height: 4),
                 Text('\$87.29',style: robo_500_14_29,)
              ],),
          );
        }, separatorBuilder:(context,i){
          return SizedBox(width: 12);
        } , itemCount: 5),
      ),
      )
      ],),
        ),
        SizedBox(height: 40),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/positioned3.png', ),alignment: Alignment.topLeft),
          ),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Andy does not want',style:Ubun_700_20,),
                    Spacer(),
                    Text('View all',style: robo_500_14_29),

                  ]),
            ),
            SizedBox(height: 18),
            SizedBox(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,i){
                      return Container(
                        width: 173,
                        height: 194,
                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: 173,
                                height: 130,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: kE0E0E0),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Image.asset('assets/images/only watch.png',height: 84,)),
                            SizedBox(height: 12),
                            Text('MorePro Fitness Tracker,Heart Rate Monitor Blood Pressure ...',style: robo_400_12_29),
                            SizedBox(height: 4),
                            Text('\$87.29',style: robo_500_14_29,)
                          ],),
                      );
                    }, separatorBuilder:(context,i){
                  return SizedBox(width: 12);
                } , itemCount: 5),
              ),
            )
          ],),
        ),
      ]),
    );
  }
}
