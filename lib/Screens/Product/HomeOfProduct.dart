import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';

class HomeOfProduct extends StatefulWidget {
  const HomeOfProduct({super.key});

  @override
  State<HomeOfProduct> createState() => _HomeOfProductState();
}

class _HomeOfProductState extends State<HomeOfProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(children: [
            Image.asset('assets/images/uncle 25 percent.png'),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  Text('Michael Scott',style: robo_500_16_29),
                  Image.asset('assets/images/direction-down 01.png'),
                ]),
                Text('Micheal139',style: robo_400_14_70),])
          ]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Image.asset('assets/images/gfx.png'),
        ),
        SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/positioned2.png', ),alignment: Alignment.topLeft),
          ),
          child: Container(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('I want',style:Ubun_700_24_29,),
                      Spacer(),
                      GestureDetector(
                          onTap: (){

                          },
                          child: Text('View all',style: robo_500_14_29)),
                      SizedBox(width: 16),
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          color: kF7E641,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset('assets/Icons/Plus.png')
                        ),
                      )
                    ]),
              ),
              SizedBox(height: 12),
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
                          Text('I don’t want',style:Ubun_700_24_29,),
                          Spacer(),
                          Text('View all',style: robo_500_14_29),
                          SizedBox(width: 16),
                          Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                              color: kF7E641,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Image.asset('assets/Icons/Plus.png')
                            ),
                          )
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
            ],),
          ),
        ),
      ],),
    );
  }
}
