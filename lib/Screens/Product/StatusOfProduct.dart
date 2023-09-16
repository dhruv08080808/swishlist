import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swishlist_ui/Screens/Product/Ialreadyhave.dart';
import 'package:swishlist_ui/Screens/Product/Idontwant.dart';

import '../../Constants/colors.dart';
import '../../Constants/textstyle.dart';
import '../../Constants/url.dart';
import '../../Models/login_model.dart';
import '../../constant/sharedprefrences/sharedprefrences.dart';
import '../Home/AddFamilyMember.dart';
import '../Home/Setting.dart';
import 'Iwant.dart';

class StatusOfProduct extends StatefulWidget {

  const StatusOfProduct({super.key});

  @override
  State<StatusOfProduct> createState() => _StatusOfProductState();
}

class _StatusOfProductState extends State<StatusOfProduct> {
  bool selected = false;
  bool showcard=false;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Row(children: [
                        GestureDetector(
                  onTap:(){
          setState(() {
            showcard=!showcard;
          });
          },
                            child: Container(
                              height: 44,
                              width: 44,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(shape: BoxShape.circle,),
                                child:
                                CachedNetworkImage(
                                  imageUrl: '$baseurl${SharedPrefs().getphoto()}',
                                    placeholder: (context, url) => CircularProgressIndicator(),
                                  errorWidget: (context, url, error) => Icon(Icons.error),
                                ),

                                // Image.asset('${SharedPrefs().getphoto()}'
                                //
                                // )

                            )

                        ),
                        SizedBox(width: 12),
                        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('${SharedPrefs().getNameToken()}', style: robo_500_16_29),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      selected=!selected;
                                    });
                                  },
                                    child: Container(

                                        child: Image.asset('assets/images/direction-down 01.png'))),
                              ]),
                          Text('${SharedPrefs().getusertoken()}', style: robo_400_14_70),
                        ]),
                        Spacer(),
                        Image.asset('assets/Icons/share icon.png')
                      ]),
                    ],
                  ),
                ),
                selected?
                AnimatedContainer(
duration: Duration(seconds: 5),

child: Padding(
  padding: const EdgeInsets.all(16),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    family(img: 'assets/Icons/aunty.png', nameee: 'Jan Levinson', status: 'Wife', surname: 'JanLovey22'),
    SizedBox(height: 12),
    family(img: 'assets/Icons/uncle.png', nameee: 'Dwight Schrute', status: 'Brother', surname: 'Dwight372882'),
    SizedBox(height: 12),
    Container(
      height: 52,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddFamilyMember()),
          );
        },
        child: Row(children: [
          Image.asset('assets/images/plus in container.png'),
          SizedBox(width: 12),
          Text('Add family member',style: robo_500_14_29)]),
      )),
    SizedBox(height: 32),
    Container(
        height: 52,
        child: Row(children: [
          Image.asset('assets/images/edit icon in a container.png'),
          SizedBox(width: 12),
          Text('Manage family members',style: robo_500_14_29),
        Spacer(),
        Image.asset('assets/Icons/right arrow.png')])),
    SizedBox(height: 12),
    Container(
        height: 52,
        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Setting()),
            );


          },
          child: Row(children: [
            Image.asset('assets/images/setting in container.png'),
            SizedBox(width: 12),
            Text('Settings',style: robo_500_14_29),
            Spacer(),
            Image.asset('assets/Icons/right arrow.png')]),
        )),
  ],),
))
              :
                SizedBox(),
          showcard?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Stack(
                    children: [
                      selected==true?SizedBox():
                      Image.asset('assets/images/gfx.png',fit: BoxFit.fitWidth),

                      Positioned(
                        right: 20,
                        top: 25,
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              showcard=!showcard;
                            });
                          },
                          child: Container(
                            height: 32,
                           width: 32,
                            color: Colors.transparent,
                          ),
                        ),
                      )
                    ],
                  ),
                ):
SizedBox(),
                Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/positioned2.png',
                          ),
                          alignment: Alignment.topLeft),
                    ),
                    child: Container(
                        child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'I want',
                                style: Ubun_700_24_29,
                              ),
                              Spacer(),
                              GestureDetector(
                                  onTap: () {},
                                  child: Text('View all', style: robo_500_14_29)),
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
                                    child: Image.asset('assets/Icons/Plus.png')),
                              )
                            ]),
                      ),
                          SizedBox(height: 12),
                          Center(child: Image.asset('assets/images/I want.png')),
                          SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  Iwant()),
                                );
                              },
                              child: Container(
                                height: 52,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: KF7E641,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 110,vertical: 16),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/Icons/Plus.png',height: 20),
                                      Text(' Add Product',style: robo_500_14_32,),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                    ]))),
                SizedBox(height: 40),
                Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/positioned2.png',
                          ),
                          alignment: Alignment.topLeft),
                    ),
                    child: Container(
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'I don’t want',
                                    style: Ubun_700_24_29,
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                      onTap: () {},
                                      child: Text('View all', style: robo_500_14_29)),
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
                                        child: Image.asset('assets/Icons/Plus.png')),
                                  )
                                ]),
                          ),
                          SizedBox(height: 12),
                          Center(child: Image.asset('assets/images/dont want.png')),
                          SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  Idontwant()),
                                );
                              },
                              child: Container(
                                height: 52,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: KF7E641,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 110,vertical: 16),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/Icons/Plus.png',height: 20),
                                      Text(' Add Product',style: robo_500_14_32,),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ]))),
                SizedBox(height: 40),
                Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/positioned2.png',
                          ),
                          alignment: Alignment.topLeft),
                    ),
                    child: Container(
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'I have already',
                                    style: Ubun_700_24_29,
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                      onTap: () {},
                                      child: Text('View all', style: robo_500_14_29)),
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
                                        child: Image.asset('assets/Icons/Plus.png')),
                                  )
                                ]),
                          ),
                          SizedBox(height: 12),
                          Center(child: Image.asset('assets/images/alreadyhave.png',height: 204,)),
                          SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Ialreadyhave()),
                                );
                              },
                              child: Container(
                                height: 52,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: KF7E641,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 110,vertical: 16),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/Icons/Plus.png',height: 20),
                                      Text(' Add Product',style: robo_500_14_32,),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ]))),
                SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
//------------------------------------stless
class family extends StatelessWidget {
  final String img;
  final String nameee;
  final String status;
  final String surname;
  const family({super.key, required this.img, required this.nameee, required this.status, required this.surname});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:44,

      child: Row(

        children: [
          Image.asset(img),
          SizedBox(width: 8),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
              crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(nameee,style: robo_400_14_1F),
                    SizedBox(width: 8),
                    Container(
                      width: 40,
                      height:22,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:kF6E3DB
                      ),
                      child: Center(child: Text(status,style: robo_400_12_29,)),
                    )
                  ],
                ),
                Text(surname,style: robo_400_14_1F),
              ]),
Spacer(),
          Image.asset('assets/Icons/opitionicon.png',alignment: Alignment.topRight)
        ],
      ),
    );
  }
}
