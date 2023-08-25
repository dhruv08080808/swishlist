import 'package:flutter/material.dart';
import 'package:swishlist_ui/Constants/textstyle.dart';

import '../../Constants/colors.dart';
class sizesandw extends StatefulWidget {

  const sizesandw({super.key});
  @override
  State<sizesandw> createState() => _sizesandwState();
}
class _sizesandwState extends State<sizesandw> {
  int Status=0;
  int bedi=0;
  TextEditingController namec=TextEditingController();
  String ?selectedIcon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sizes and weights',style: robo_500_16_29),
          Text('60% Completed',style: robo_400_12_70),
        ],
      ),

      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            backgroundColor: k576ACC,
            valueColor: AlwaysStoppedAnimation(k576ACC),
            minHeight: 8,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Fashion',style: robo_600_14_29),
                SizedBox(height: 4),
                usersetting(profileeee: 'Waist', status: '32', imggg: 'assets/Icons/icon1.png', onTap: () {
                  showDialog<String>(
                      context: context,

                      builder: (BuildContext context) => AlertDialog(
                        backgroundColor: Colors.white,

                    title:  Text('Waist Size',style: robo_500_14_29,),
                    insetPadding: EdgeInsets.all(10),
                    content: SingleChildScrollView(
                      child: Column(children: [
                        Row(
                          children: [
                            GestureDetector(
                                onTap:(){
                                  setState(() {
                                    Status=0;
                                  });
                                },
                                child: smallc(txtttt: '20', color:
                                Status==0?kF7E641: kEFEFEF,)),
                            SizedBox(width: 8),
                            GestureDetector(
                                onTap:(){
                                  setState(() {
                                    Status=1;
                                  });
                                },
                                child: smallc(txtttt: '22', color:
                                  Status==1?kF7E641: kEFEFEF,)),
                            SizedBox(width: 8),
                            GestureDetector(
                                onTap:(){
                                  setState(() {
                                    Status=2;
                                  });
                                },

                                child: smallc(txtttt: '24', color: Status==2?kF7E641: kEFEFEF,)),
                            SizedBox(width: 8),
                            GestureDetector(
                                onTap: (){
                                  setState(() {
                                    Status=3;
                                  });
                                },
                                child: smallc(txtttt: '26', color: Status==3?kF7E641: kEFEFEF,)),
                            SizedBox(width: 8),
                            smallc(txtttt: '28', color: kEFEFEF,),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            smallc(txtttt: '30', color: kEFEFEF,),
                            SizedBox(width: 8),
                            smallc(txtttt: '32', color: kEFEFEF,),
                            SizedBox(width: 8),
                            smallc(txtttt: '36', color: kEFEFEF,),
                            SizedBox(width: 8),
                            smallc(txtttt: '38', color: kEFEFEF,),
                            SizedBox(width: 8),
                            smallc(txtttt: '40', color: kEFEFEF,),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            smallc(txtttt: '42', color: kEFEFEF,),
                            SizedBox(width: 8),
                            smallc(txtttt: '>44', color: kEFEFEF,),
                          ],
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
Center(child: Image.asset('assets/images/direction-down 01.png'))
                          ],)
                      ],),
                    ),
                  ),
                  );
                },),
                usersetting(profileeee: 'Shirt', status: '36', imggg: 'assets/Icons/icon lock.png', onTap: () {  showDialog<String>(
                  context: context,

                  builder: (BuildContext context) => AlertDialog(
                    backgroundColor: Colors.white,

                    title:  Text('Waist Size',style: robo_500_14_29,),
                    insetPadding: EdgeInsets.all(10),
                    content: SingleChildScrollView(
                      child: Column(children: [
                        Row(
                          children: [
                            GestureDetector(
                                onTap:(){
                                  setState(() {
                                    Status=0;
                                  });
                                },
                                child: smallc(txtttt: '20', color:
                                Status==0?kF7E641: kEFEFEF,)),
                            SizedBox(width: 8),
                            GestureDetector(
                                onTap:(){
                                  setState(() {
                                    Status=1;
                                  });
                                },
                                child: smallc(txtttt: '22', color:
                                Status==1?kF7E641: kEFEFEF,)),
                            SizedBox(width: 8),
                            GestureDetector(
                                onTap:(){
                                  setState(() {
                                    Status=2;
                                  });
                                },

                                child: smallc(txtttt: '24', color: Status==2?kF7E641: kEFEFEF,)),
                            SizedBox(width: 8),
                            GestureDetector(
                                onTap: (){
                                  setState(() {
                                    Status=3;
                                  });
                                },
                                child: smallc(txtttt: '26', color: Status==3?kF7E641: kEFEFEF,)),
                            SizedBox(width: 8),
                            smallc(txtttt: '28', color: kEFEFEF,),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            smallc(txtttt: '30', color: kEFEFEF,),
                            SizedBox(width: 8),
                            smallc(txtttt: '32', color: kEFEFEF,),
                            SizedBox(width: 8),
                            smallc(txtttt: '36', color: kEFEFEF,),
                            SizedBox(width: 8),
                            smallc(txtttt: '38', color: kEFEFEF,),
                            SizedBox(width: 8),
                            smallc(txtttt: '40', color: kEFEFEF,),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            smallc(txtttt: '42', color: kEFEFEF,),
                            SizedBox(width: 8),
                            smallc(txtttt: '>44', color: kEFEFEF,),
                          ],
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
                            Center(child: Image.asset('assets/images/direction-down 01.png'))
                          ],)
                      ],),
                    ),
                  ),
                );  },),

                usersetting(profileeee: 'Shoes', status: '', imggg: 'assets/Icons/icon i 1x.png', onTap: () {  showDialog<String>(
                  context: context,

                  builder: (BuildContext context) => AlertDialog(
                    backgroundColor: Colors.white,

                    title:  Text('Waist Size',style: robo_500_14_29,),
                    insetPadding: EdgeInsets.all(10),
                    content: SingleChildScrollView(
                      child: Column(children: [
                        Row(
                          children: [
                            GestureDetector(
                                onTap:(){
                                  setState(() {
                                    Status=0;
                                  });
                                },
                                child: smallc(txtttt: '6', color:
                                Status==0?kF7E641: kEFEFEF,)),
                            SizedBox(width: 8),
                            GestureDetector(
                                onTap:(){
                                  setState(() {
                                    Status=1;
                                  });
                                },
                                child: smallc(txtttt: '7', color:
                                Status==1?kF7E641: kEFEFEF,)),
                            SizedBox(width: 8),
                            GestureDetector(
                                onTap:(){
                                  setState(() {
                                    Status=2;
                                  });
                                },

                                child: smallc(txtttt: '8', color: Status==2?kF7E641: kEFEFEF,)),
                            SizedBox(width: 8),
                            GestureDetector(
                                onTap: (){
                                  setState(() {
                                    Status=3;
                                  });
                                },
                                child: smallc(txtttt: '9', color: Status==3?kF7E641: kEFEFEF,)),
                            SizedBox(width: 8),
                            smallc(txtttt: '10', color: kEFEFEF,),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            smallc(txtttt: '11', color: kEFEFEF,),

                          ],
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
                            Center(child: Image.asset('assets/images/direction-down 01.png'))
                          ],)
                      ],),
                    ),
                  ),
                ); },),
                SizedBox(height: 24),
                Text('Home',style: robo_600_14_29),
                SizedBox(height: 4),
                usersetting(profileeee: 'Bed', status: '$bedi', imggg: 'assets/Icons/icon1.png', onTap: () {  showDialog<String>(
                  context: context,

                  builder: (BuildContext context) => AlertDialog(
                    backgroundColor: Colors.white,

                    title:  Text(' Bed',style: robo_500_14_29,),
                    insetPadding: EdgeInsets.all(10),
                    content: SingleChildScrollView(
                      child: Column(children: [
                        Row(
                          children: [
                            GestureDetector(
                                onTap:(){
                                  setState(() {
                                bedi=0;
                                  });
                                },
                                child: smallc(txtttt:
                                'Single', color:
                                bedi==0?kF7E641: kEFEFEF,)),
                            SizedBox(width: 8),
                            GestureDetector(
                                onTap:(){
                                  setState(() {
                                    bedi=1;
                                  });
                                },
                                child: smallc(txtttt:'Double', color:
                                bedi==1?kF7E641: kEFEFEF,)),
                            SizedBox(width: 8),
                            GestureDetector(
                                onTap:(){
                                  setState(() {
                                    bedi=2;
                                  });
                                },

                                child: smallc(txtttt: 'King', color: bedi==2?kF7E641: kEFEFEF,)),
                            SizedBox(width: 8),
                            GestureDetector(
                                onTap: (){
                                  setState(() {
                                    bedi=3;
                                  });
                                },
                                child: smallc(txtttt: 'Queen', color: bedi==3?kF7E641: kEFEFEF,)),
                            SizedBox(width: 8),

                          ],
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
                            Center(child: Image.asset('assets/images/direction-down 01.png'))
                          ],)
                      ],),
                    ),
                  ),
                ); },),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//---------------stless
class usersetting extends StatelessWidget {
  final String profileeee;
  final String status;
  final String imggg;
  final Function() onTap;
  const usersetting({super.key, required this.profileeee, required this.status, required this.imggg, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(profileeee,style: robo_400_14_70),
            Row(children: [
              Text(status,style: robo_400_14_b_29),
              SizedBox(width: 4),
              Image.asset(imggg),
              SizedBox(width: 4),
              Image.asset('assets/images/right aroow.png')
            ],)
          ],
        ),
      ),
    );
  }
}
//-------------------------stless
class smallc extends StatelessWidget {
  final String txtttt;
  final Color color;

  const smallc({super.key, required this.txtttt, required this.color});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 52,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
         color: kEFEFEF,
        border: Border.all(color:color)

      ),
      child: Center(child: Text(txtttt,style: robo_400_14_b_29,)),
    );
  }
}
